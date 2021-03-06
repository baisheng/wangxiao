package io.wangxiao.edu.home.dao.impl.member;

import io.wangxiao.commons.dao.impl.GenericDaoImpl;
import io.wangxiao.commons.entity.PageEntity;
import io.wangxiao.edu.home.dao.member.MemberRecordDao;
import io.wangxiao.edu.home.entity.member.MemberRecord;
import io.wangxiao.edu.home.entity.member.MemberRecordDTO;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository("memberRecordDao")
public class MemberRecordDaoImpl extends GenericDaoImpl implements MemberRecordDao {

    public java.lang.Long addMemberRecord(MemberRecord memberRecord) {
        return this.insert("MemberRecordMapper.createMemberRecord", memberRecord);
    }


    public void updateMemberRecord(MemberRecord memberRecord) {
        this.update("MemberRecordMapper.updateMemberRecord", memberRecord);
    }

    public MemberRecord getMemberRecordById(Long id) {
        return this.selectOne("MemberRecordMapper.getMemberRecordById", id);
    }

    public List<MemberRecordDTO> getMemberRecordPage(MemberRecordDTO memberRecordDTO, PageEntity page) {
        return this.queryForListPage("MemberRecordMapper.getMemberRecordPage", memberRecordDTO, page);
    }


    /**
     * 根据用户id、会员类型查询MemberRecord对象
     *
     * @param userId
     * @param type
     * @return
     */
    public MemberRecord getMemberRecordByCondition(Long userId, Long type) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("userId", userId);
        map.put("type", type);
        return this.selectOne("MemberRecordMapper.getMemberRecordByCondition", map);
    }

    public List<MemberRecordDTO> getMemberRecordByUser(Long userId) {
        return this.selectList("MemberRecordMapper.getMemberRecordByUser", userId);
    }

    /**
     * 获得记录详情
     *
     * @param id
     * @return
     */
    public MemberRecordDTO getMemberRecordInfo(Long id) {
        return this.selectOne("MemberRecordMapper.getMemberRecordInfo", id);
    }

    /**
     * 会员关闭 更新状态
     *
     * @param memberRecord
     */
    public void updateMemberStatus(MemberRecord memberRecord) {
        this.update("MemberRecordMapper.updateMemberStatus", memberRecord);
    }
}
