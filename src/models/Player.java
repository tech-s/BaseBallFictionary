package models;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Table(name = "players")

@Entity
public class Player {
    @Id
    @Column(name = "player_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer player_id;

    //データの年度　「年度別データ詳細」用
    @Column(name = "data_year", nullable = true)
    private Integer data_year;

    @ManyToOne
    @JoinColumn(name = "chara_id", nullable = true)
    private Character characters;

    //登録名　nullならchara_nameを自動で取得
    @Column(name = "player_name", length = 255, nullable = true)
    private String player_name;

  //所属球団
    @ManyToOne
    @JoinColumn(name = "team_id", nullable = true)
    private Team teams;

    //0.未分類　1.投手　2.捕手　3.内野手　4.外野手　5.監督　6.ヘッドコーチ　7.投手コーチ　8.打撃コーチ　9.走塁コーチ　10.バッテリーコーチ　11.内野守備コーチ　12.外野守備コーチ
    @Column(name = "posision1", nullable = true)
    private Integer posision1;

    //0.未分類　1.投手　2.捕手　3.内野手　4.外野手　5.監督　6.ヘッドコーチ　7.投手コーチ　8.打撃コーチ　9.走塁コーチ　10.バッテリーコーチ　11.内野守備コーチ　12.外野守備コーチ
    @Column(name = "posision2", nullable = true)
    private Integer posision2;

    //0.未分類　1.投手　2.捕手　3.内野手　4.外野手　5.監督　6.ヘッドコーチ　7.投手コーチ　8.打撃コーチ　9.走塁コーチ　10.バッテリーコーチ　11.内野守備コーチ　12.外野守備コーチ
    @Column(name = "posision3", nullable = true)
    private Integer posision3;

    @Column(name = "posision_detail", nullable = true)
    private String posision_detail;

    //背番号
    @Column(name = "number", nullable = true)
    private String number;

    //0.右　1.左　2.両
    @Column(name = "throwing", nullable = true)
    private Integer throwing;

    //0.右　1.左　2.両
    @Column(name = "batting", nullable = true)
    private Integer batting;

    //0.日本人　1.外国人　2.その他
    @Column(name = "player_type1", nullable = true)
    private Integer player_type1;

    //0.支配下　1.育成　2.その他
    @Column(name = "player_type2", nullable = true)
    private Integer player_type2;

    //年俸(単位:円)
    @Column(name = "salary", nullable = true)
    private Integer salary;

    //登場曲など
    @Column(name = "music", nullable = true)
    private String music;

    //選手としての特徴
    @Column(name = "player_information", nullable = true)
    private String player_information;

    //主な実績
    @Column(name = "performance", nullable = true)
    private String performance;

    //その他補足情報
    @Column(name = "ather_player_information", nullable = true)
    private String ather_player_information;

    @Column(name = "created_at", nullable = false)
    private Timestamp created_at;

    @Column(name = "updated_at", nullable = false)
    private Timestamp updated_at;


    public Integer getPlayer_id() {
        return player_id;
    }

    public void setPlayer_id(Integer player_id) {
        this.player_id = player_id;
    }

    public Integer getData_year() {
        return data_year;
    }

    public void setData_year(Integer data_year) {
        this.data_year = data_year;
    }

    public Character getCharacters() {
        return characters;
    }

    public void setCharacters(Character characters) {
        this.characters = characters;
    }

    public String getPlayer_name() {
        return player_name;
    }

    public void setPlayer_name(String player_name) {
        this.player_name = player_name;
    }

    public Team getTeams() {
        return teams;
    }

    public void setTeams(Team teams) {
        this.teams = teams;
    }

    public Integer getPosision1() {
        return posision1;
    }

    public void setPosision1(Integer posision1) {
        this.posision1 = posision1;
    }

    public Integer getPosision2() {
        return posision2;
    }

    public void setPosision2(Integer posision2) {
        this.posision2 = posision2;
    }

    public Integer getPosision3() {
        return posision3;
    }

    public void setPosision3(Integer posision3) {
        this.posision3 = posision3;
    }

    public String getPosision_detail() {
        return posision_detail;
    }

    public void setPosision_detail(String posision_detail) {
        this.posision_detail = posision_detail;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public Integer getThrowing() {
        return throwing;
    }

    public void setThrowing(Integer throwing) {
        this.throwing = throwing;
    }

    public Integer getBatting() {
        return batting;
    }

    public void setBatting(Integer batting) {
        this.batting = batting;
    }

    public Integer getPlayer_type1() {
        return player_type1;
    }

    public void setPlayer_type1(Integer player_type1) {
        this.player_type1 = player_type1;
    }

    public Integer getPlayer_type2() {
        return player_type2;
    }

    public void setPlayer_type2(Integer player_type2) {
        this.player_type2 = player_type2;
    }

    public Integer getSalary() {
        return salary;
    }

    public void setSalary(Integer salary) {
        this.salary = salary;
    }

    public String getMusic() {
        return music;
    }

    public void setMusic(String music) {
        this.music = music;
    }

    public String getPlayer_information() {
        return player_information;
    }

    public void setPlayer_information(String player_information) {
        this.player_information = player_information;
    }

    public String getPerformance() {
        return performance;
    }

    public void setPerformance(String performance) {
        this.performance = performance;
    }

    public String getAther_player_information() {
        return ather_player_information;
    }

    public void setAther_player_information(String ather_player_information) {
        this.ather_player_information = ather_player_information;
    }

    public Timestamp getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Timestamp created_at) {
        this.created_at = created_at;
    }

    public Timestamp getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(Timestamp updated_at) {
        this.updated_at = updated_at;
    }
}
