package kr.co.hsd.core.board.repository;

import kr.co.hsd.core.board.domain.Board;
import kr.co.hsd.core.config.support.DefaultMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by lee young eun on 2017-07-31.
 */
@DefaultMapper
@Repository
public interface BoardRepository {

    /**
     * 게시판 카운트 조회
     * @param board 조회 조건
     * @return int
     */
    int listBoardCnt(Board board);

    /**
     * 게시판 목록 조회
     * @param board 조회 조건
     * @return List<Board>
     */
    List<Board> listBoard(Board board);

    /**
     * 조회수 업데이트
     * @param board
     * @return
     */
    int updateBoardHits(Board board);

    /**
     * 게시판 조회
     * @param board
     * @return Board
     */
    Board getBoard(Board board);

    /**
     * 이전글 조회
     * @param board
     * @return
     */
    Board getPrevBoard(Board board);

    /**
     * 다음글 조회
     * @param board
     * @return
     */
    Board getNextBoard(Board board);

}
