<?xml version="1.0" encoding="UTF-8" ?>
<SCL xmlns="http://www.iec.ch/61850/2003/SCL" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.iec.ch/61850/2003/SCL SCL.xsd" xmlns:ext="http://www.sgepri.sgcc.com.cn" xmlns:IEC_60870_5_104="http://www.sgepri.sgcc.com.cn" xmlns:csg="http://www.sgepri.sgcc.com.cn">
	<Private type="Substation virtual terminal conection CRC">7BEA7A7D</Private>
	<Header id="Default Substation" nameStructure="IEDName" version="1.0" revision="1.0" toolID="NariConfigTool">
		<History>
			<Hitem version="1.0" revision="1.0" when="2019-03-15 09:59:55" who="" what="" why=""/>
		</History>
	</Header>
	<Communication desc="communication">
		<SubNetwork name="Subnetwork_Stationbus">
			<ConnectedAP iedName="TEMPLATE" apName="S1">
				<Address>
					<P type="OSI-AP-Title">1,3,9999,33</P>
					<P type="OSI-AE-Qualifier">33</P>
					<P type="OSI-PSEL">00000001</P>
					<P type="OSI-SSEL">0001</P>
					<P type="OSI-TSEL">0001</P>
					<P type="IP">100.100.100.100</P>
					<P type="IP-SUBNET">255.255.255.0</P>
				</Address>
				<GSE ldInst="CTRL" cbName="gocb">
					<Address>
						<P type="MAC-Address">01-0C-CD-01-00-00</P>
						<P type="VLAN-ID">000</P>
						<P type="VLAN-PRIORITY">4</P>
						<P type="APPID">0000</P>
					</Address>
					<MinTime unit="s" multiplier="m">2</MinTime>
					<MaxTime unit="s" multiplier="m">5000</MaxTime>
				</GSE>
				<GSE ldInst="MEAS" cbName="gocb">
					<Address>
						<P type="MAC-Address">01-0C-CD-01-00-01</P>
						<P type="VLAN-ID">000</P>
						<P type="VLAN-PRIORITY">4</P>
						<P type="APPID">0001</P>
					</Address>
					<MinTime unit="s" multiplier="m">2</MinTime>
					<MaxTime unit="s" multiplier="m">5000</MaxTime>
				</GSE>
				<PhysConn type="Connection">
					<P type="Plug">RJ45</P>
					<P type="Port">2-A</P>
					<P type="Type">100BaseT</P>
				</PhysConn>
				<PhysConn type="RedConn">
					<P type="Plug">RJ45</P>
					<P type="Port">2-B</P>
					<P type="Type">100BaseT</P>
				</PhysConn>
				<PhysConn type="RedConn">
					<P type="Plug">RJ45</P>
					<P type="Port">2-C</P>
					<P type="Type">100BaseT</P>
				</PhysConn>
			</ConnectedAP>
		</SubNetwork>
		<SubNetwork name="Subnetwork_Processbus">
			<ConnectedAP iedName="TEMPLATE" apName="G1">
				<GSE ldInst="PIGO" cbName="gocb1">
					<Address>
						<P type="MAC-Address">01-0C-CD-01-00-02</P>
						<P type="VLAN-ID">000</P>
						<P type="VLAN-PRIORITY">4</P>
						<P type="APPID">0002</P>
					</Address>
					<MinTime unit="s" multiplier="m">2</MinTime>
					<MaxTime unit="s" multiplier="m">5000</MaxTime>
				</GSE>
				<PhysConn type="Connection">
					<P type="Plug">LC</P>
					<P type="Port">2-G</P>
					<P type="Type">FOC</P>
				</PhysConn>
				<PhysConn type="RedConn">
					<P type="Plug">LC</P>
					<P type="Port">2-H</P>
					<P type="Type">FOC</P>
				</PhysConn>
			</ConnectedAP>
		</SubNetwork>
	</Communication>
	<IED name="TEMPLATE" type="NSR-3613A-N" desc="NSR-3613A-N母联(分段)保护测控装置" manufacturer="GDNR" configVersion="V1.01">
		<Private type="IED virtual terminal conection CRC">A2019FE8</Private>
		<Private type="Signal Map">PROT/BOGGIO2.Ind6;PIGO/GOINGGIO1.SPCSO1</Private>
		<Private type="Signal Map">PROT/BOGGIO2.Ind7;PIGO/GOINGGIO1.SPCSO2</Private>
		<Private type="Signal Map">PROT/BOGGIO2.Ind8;PIGO/GOINGGIO1.SPCSO3</Private>
		<Private type="Signal Map">PROT/BOGGIO3.Ind1;PIGO/GOINGGIO1.SPCSO4</Private>
		<Private type="Signal Map">PROT/BOGGIO3.Ind2;PIGO/GOINGGIO1.SPCSO5</Private>
		<Private type="Signal Map">PROT/BOGGIO3.Ind3;PIGO/GOINGGIO1.SPCSO6</Private>
		<Private type="Signal Map">PROT/BOGGIO3.Ind4;PIGO/GOINGGIO1.SPCSO7</Private>
		<Private type="Signal Map">PROT/BOGGIO3.Ind5;PIGO/GOINGGIO1.SPCSO8</Private>
		<Private type="Signal Map">PROT/BOGGIO3.Ind6;PIGO/GOINGGIO2.SPCSO1</Private>
		<Private type="Signal Map">PROT/BOGGIO3.Ind7;PIGO/GOINGGIO2.SPCSO2</Private>
		<Services>
			<DynAssociation/>
			<SettingGroups>
				<SGEdit/>
			</SettingGroups>
			<GetDirectory/>
			<GetDataObjectDefinition/>
			<DataObjectDirectory/>
			<GetDataSetValue/>
			<DataSetDirectory/>
			<ConfDataSet max="40" maxAttributes="255"/>
			<ReadWrite/>
			<ConfReportControl max="40"/>
			<GetCBValues/>
			<ConfLogControl max="10"/>
			<ReportSettings cbName="Conf" datSet="Conf" rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn"/>
			<LogSettings cbName="Conf" datSet="Conf" intgPd="Dyn"/>
			<GOOSE max="16"/>
			<FileHandling/>
			<ConfLNs fixPrefix="true" fixLnInst="true"/>
		</Services>
		<AccessPoint name="S1" desc="站控层" router="false" clock="false">
			<Server timeout="30">
				<Authentication none="true" password="false" weak="false" strong="false" certificate="false"/>
				<LDevice inst="CTRL" desc="信号与控制">
					<LN0 lnClass="LLN0" lnType="GDNR_V1_LLN0_NSR-3613A-N" inst="" desc="信号与控制逻辑节点0">
						<DataSet name="dsGOOSE" desc="联闭锁位置数据集">
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="DPCSO1" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="DPCSO2" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="DPCSO3" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="DPCSO4" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="2" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="2" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="2" doName="Ind3" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="2" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="2" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="2" doName="Ind6" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="2" doName="Ind7" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="2" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="2" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="2" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="2" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="2" doName="Ind12" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="2" doName="Ind13" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="2" doName="Ind14" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="2" doName="Ind15" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="2" doName="Ind16" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="2" doName="Ind17" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="2" doName="Ind18" daName="stVal" fc="ST"/>
						</DataSet>
						<DataSet name="dsInterLock" desc="联锁状态数据集">
							<FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
							<FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
							<FCDA ldInst="CTRL" lnClass="CILO" lnInst="2" doName="EnaOpn" fc="ST"/>
							<FCDA ldInst="CTRL" lnClass="CILO" lnInst="2" doName="EnaCls" fc="ST"/>
							<FCDA ldInst="CTRL" lnClass="CILO" lnInst="3" doName="EnaOpn" fc="ST"/>
							<FCDA ldInst="CTRL" lnClass="CILO" lnInst="3" doName="EnaCls" fc="ST"/>
							<FCDA ldInst="CTRL" lnClass="CILO" lnInst="4" doName="EnaOpn" fc="ST"/>
							<FCDA ldInst="CTRL" lnClass="CILO" lnInst="4" doName="EnaCls" fc="ST"/>
						</DataSet>
						<DataSet name="dsDin" desc="遥信数据集">
							<FCDA ldInst="CTRL" prefix="CB" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="QG1" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="QG2" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="QG3" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind4" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind5" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind6" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind7" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind8" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind9" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind10" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind11" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind12" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind13" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind14" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind15" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind16" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind17" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind18" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="YYB" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="YYB" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="YYB" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="RYB" lnClass="GGIO" lnInst="1" doName="SPCSO1" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="RYB" lnClass="GGIO" lnInst="1" doName="SPCSO2" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="RYB" lnClass="GGIO" lnInst="1" doName="SPCSO3" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="RYB" lnClass="GGIO" lnInst="1" doName="SPCSO4" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="RYB" lnClass="GGIO" lnInst="1" doName="SPCSO5" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="CBSyn" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="CBDea" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="RS" lnClass="GAPC" lnInst="1" doName="SPCSO" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="RS" lnClass="GAPC" lnInst="2" doName="SPCSO" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind4" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind5" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind6" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind7" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind8" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind9" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind10" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind11" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind12" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind13" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind14" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind15" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind16" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind17" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind18" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind19" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind20" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind21" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind22" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind23" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind24" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind25" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind26" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind27" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind28" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind29" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind31" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind32" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="2" doName="Ind1" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="BI" lnClass="GGIO" lnInst="2" doName="Ind2" fc="ST"/>
						</DataSet>
						<ReportControl name="brcbDin" datSet="dsDin" intgPd="300000" rptID="CTRL/LLN0$BR$brcbDin" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="false" dupd="false" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="brcbInterLock" datSet="dsInterLock" intgPd="0" rptID="CTRL/LLN0$BR$brcbInterLock" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="true" dupd="false" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="false"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="逻辑节点铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>逻辑节点铭牌</Val>
							</DAI>
							<DAI name="configRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2003</Val>
							</DAI>
						</DOI>
						<GSEControl name="gocb" datSet="dsGOOSE" confRev="1" type="GOOSE" appID="TEMPLATECTRL/LLN0$GO$gocb"/>
					</LN0>
					<LN lnClass="LPHD" lnType="GDNR_V2_LPHD_NSR-3613A-N" inst="1" desc="装置物理信息">
						<DOI name="PhyNam" desc="物理装置铭牌"/>
						<DOI name="PhyHealth" desc="物理装置健康状况"/>
						<DOI name="Proxy" desc="是否为代理">
							<DAI name="dU">
								<Val>是否为代理</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="CB" lnClass="CSWI" lnType="GDNR_V1_CSWI_NSR-3613A-N" inst="1" desc="断路器强合">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="性能">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Pos" desc="断路器位置">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.DigOrder00:1"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.DigOrder00:1"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.DigOrder00:1"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_YX.twinsYx[0].soeValue"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.twinsYx[0].soeValue">
								<Val>断路器位置</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="CBSyn" lnClass="CSWI" lnType="GDNR_V1_CSWI_NSR-3613A-N" inst="1" desc="断路器检同期合闸">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Pos" desc="断路器位置">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.DigOrder00:2"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.DigOrder00:2"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.DigOrder00:2"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_YX.twinsYx[0].soeValue"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.twinsYx[0].soeValue">
								<Val>断路器位置</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="CBDea" lnClass="CSWI" lnType="GDNR_V1_CSWI_NSR-3613A-N" inst="1" desc="断路器检无压合闸">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Pos" desc="断路器位置">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.DigOrder00:3"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.DigOrder00:3"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.DigOrder00:3"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_YX.twinsYx[0].soeValue"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.twinsYx[0].soeValue">
								<Val>断路器位置</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="QG1" lnClass="CSWI" lnType="GDNR_V1_CSWI_NSR-3613A-N" inst="1" desc="手车1遥控">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="性能">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Pos" desc="双点遥信开入1">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.DigOrder01"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.DigOrder01"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.DigOrder01"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_YX.twinsYx[1].soeValue"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.twinsYx[1].soeValue">
								<Val>双点遥信开入1</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="QG2" lnClass="CSWI" lnType="GDNR_V1_CSWI_NSR-3613A-N" inst="1" desc="手车2遥控">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="性能">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Pos" desc="双点遥信开入2">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.DigOrder02"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.DigOrder02"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.DigOrder02"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_YX.twinsYx[2].soeValue"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.twinsYx[2].soeValue">
								<Val>双点遥信开入2</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="QG3" lnClass="CSWI" lnType="GDNR_V1_CSWI_NSR-3613A-N" inst="1" desc="接地刀闸遥控">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="性能">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Pos" desc="双点遥信开入3">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.DigOrder03"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.DigOrder03"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.DigOrder03"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_YX.twinsYx[3].soeValue"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.twinsYx[3].soeValue">
								<Val>双点遥信开入3</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="RS" lnClass="GAPC" lnType="GDNR_V3_GAPC_NSR-3613A-N" inst="1" desc="手车1复归">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO" desc="手车1复归">
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.DigOrder04:128"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_BO.outPutSingle[18]"/>
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.DigOrder04">
								<Val>手车1复归</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="RS" lnClass="GAPC" lnType="GDNR_V3_GAPC_NSR-3613A-N" inst="2" desc="手车2复归">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO" desc="手车2复归">
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.DigOrder05:128"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_BO.outPutSingle[19]"/>
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.DigOrder05">
								<Val>手车2复归</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="Q0" lnClass="GGIO" lnType="GDNR_V1_SPS32_GGIO_NSR-3613A-N" inst="1" desc="遥信SOE">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="性能">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="遥信开入1">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN1].soeValue"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN1].soeValue">
								<Val>遥信开入1</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="遥信开入2">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN2].soeValue"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN2].soeValue">
								<Val>遥信开入2</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="遥信开入3">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN3].soeValue"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN3].soeValue">
								<Val>遥信开入3</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="遥信开入4">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN4].soeValue"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN4].soeValue">
								<Val>遥信开入4</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="遥信开入5">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN5].soeValue"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN5].soeValue">
								<Val>遥信开入5</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="遥信开入6">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN6].soeValue"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN6].soeValue">
								<Val>遥信开入6</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="遥信开入7">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN7].soeValue"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN7].soeValue">
								<Val>遥信开入7</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="遥信开入8">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN8].soeValue"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN8].soeValue">
								<Val>遥信开入8</Val>
							</DAI>
						</DOI>
						<DOI name="Ind9" desc="遥信开入9">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN9].soeValue"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN9].soeValue">
								<Val>遥信开入9</Val>
							</DAI>
						</DOI>
						<DOI name="Ind10" desc="遥信开入10">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN10].soeValue"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN10].soeValue">
								<Val>遥信开入10</Val>
							</DAI>
						</DOI>
						<DOI name="Ind11" desc="遥信开入11">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN11].soeValue"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN11].soeValue">
								<Val>遥信开入11</Val>
							</DAI>
						</DOI>
						<DOI name="Ind12" desc="遥信开入12">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN12].soeValue"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN12].soeValue">
								<Val>遥信开入12</Val>
							</DAI>
						</DOI>
						<DOI name="Ind13" desc="遥信开入13">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN13].soeValue"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN13].soeValue">
								<Val>遥信开入13</Val>
							</DAI>
						</DOI>
						<DOI name="Ind14" desc="遥信开入14">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN14].soeValue"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN14].soeValue">
								<Val>遥信开入14</Val>
							</DAI>
						</DOI>
						<DOI name="Ind15" desc="遥信开入15">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN15].soeValue"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN15].soeValue">
								<Val>遥信开入15</Val>
							</DAI>
						</DOI>
						<DOI name="Ind16" desc="遥信开入16">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN16].soeValue"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN16].soeValue">
								<Val>遥信开入16</Val>
							</DAI>
						</DOI>
						<DOI name="Ind17" desc="遥信开入17">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN17].soeValue"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN17].soeValue">
								<Val>遥信开入17</Val>
							</DAI>
						</DOI>
						<DOI name="Ind18" desc="遥信开入18">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN18].soeValue"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN18].soeValue">
								<Val>遥信开入18</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="Q0" lnClass="GGIO" lnType="GDNR_V1_DPS8_GGIO_NSR-3613A-N" inst="2" desc="双点SOE">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO1" desc="断路器位置">
							<DAI name="stVal" sAddr="B02.CNST_YX.twinsYx[0].soeValue"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.twinsYx[0].soeValue">
								<Val>断路器位置</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO2" desc="双点遥信开入1">
							<DAI name="stVal" sAddr="B02.CNST_YX.twinsYx[1].soeValue"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.twinsYx[1].soeValue">
								<Val>双点遥信开入1</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO3" desc="双点遥信开入2">
							<DAI name="stVal" sAddr="B02.CNST_YX.twinsYx[2].soeValue"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.twinsYx[2].soeValue">
								<Val>双点遥信开入2</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO4" desc="双点遥信开入3">
							<DAI name="stVal" sAddr="B02.CNST_YX.twinsYx[3].soeValue"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.twinsYx[3].soeValue">
								<Val>双点遥信开入3</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOIN" lnClass="GGIO" lnType="GDNR_V1_SPC32_GGIO_NSR-3613A-N" inst="1" desc="GOOSE单点输入">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="性能">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO1" desc="GOOSE接收单点遥信1">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_001"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_001_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_001_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_001">
								<Val>GOOSE接收单点遥信1</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO2" desc="GOOSE接收单点遥信2">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_002"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_002_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_002_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_002">
								<Val>GOOSE接收单点遥信2</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO3" desc="GOOSE接收单点遥信3">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_003"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_003_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_003_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_003">
								<Val>GOOSE接收单点遥信3</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO4" desc="GOOSE接收单点遥信4">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_004"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_004_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_004_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_004">
								<Val>GOOSE接收单点遥信4</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO5" desc="GOOSE接收单点遥信5">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_005"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_005_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_005_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_005">
								<Val>GOOSE接收单点遥信5</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO6" desc="GOOSE接收单点遥信6">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_006"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_006_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_006_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_006">
								<Val>GOOSE接收单点遥信6</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO7" desc="GOOSE接收单点遥信7">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_007"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_007_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_007_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_007">
								<Val>GOOSE接收单点遥信7</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO8" desc="GOOSE接收单点遥信8">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_008"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_008_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_008_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_008">
								<Val>GOOSE接收单点遥信8</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO9" desc="GOOSE接收单点遥信9">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_009"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_009_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_009_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_009">
								<Val>GOOSE接收单点遥信9</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO10" desc="GOOSE接收单点遥信10">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_010"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_010_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_010_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_010">
								<Val>GOOSE接收单点遥信10</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO11" desc="GOOSE接收单点遥信11">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_011"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_011_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_011_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_011">
								<Val>GOOSE接收单点遥信11</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO12" desc="GOOSE接收单点遥信12">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_012"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_012_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_012_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_012">
								<Val>GOOSE接收单点遥信12</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO13" desc="GOOSE接收单点遥信13">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_013"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_013_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_013_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_013">
								<Val>GOOSE接收单点遥信13</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO14" desc="GOOSE接收单点遥信14">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_014"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_014_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_014_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_014">
								<Val>GOOSE接收单点遥信14</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO15" desc="GOOSE接收单点遥信15">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_015"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_015_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_015_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_015">
								<Val>GOOSE接收单点遥信15</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO16" desc="GOOSE接收单点遥信16">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_016"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_016_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_016_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_016">
								<Val>GOOSE接收单点遥信16</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO17" desc="GOOSE接收单点遥信17">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_017"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_017_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_017_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_017">
								<Val>GOOSE接收单点遥信17</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO18" desc="GOOSE接收单点遥信18">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_018"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_018_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_018_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_018">
								<Val>GOOSE接收单点遥信18</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO19" desc="GOOSE接收单点遥信19">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_019"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_019_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_019_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_019">
								<Val>GOOSE接收单点遥信19</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO20" desc="GOOSE接收单点遥信20">
							<DAI name="stVal" sAddr="&lt;B02.goose.soe_out_020"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_020_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_020_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_020">
								<Val>GOOSE接收单点遥信20</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOIN" lnClass="GGIO" lnType="GDNR_V1_DPC8_GGIO_NSR-3613A-N" inst="2" desc="GOOSE接收双点">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO1" desc="GOOSE接收双点遥信1">
							<DAI name="stVal" sAddr="&lt;B02.goose.dp_soe_out_001"/>
							<DAI name="q" sAddr="&lt;B02.goose.dp_soe_out_001_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.dp_soe_out_001_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.dp_soe_out_001">
								<Val>GOOSE接收双点遥信1</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO2" desc="GOOSE接收双点遥信2">
							<DAI name="stVal" sAddr="&lt;B02.goose.dp_soe_out_002"/>
							<DAI name="q" sAddr="&lt;B02.goose.dp_soe_out_002_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.dp_soe_out_002_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.dp_soe_out_002">
								<Val>GOOSE接收双点遥信2</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO3" desc="GOOSE接收双点遥信3">
							<DAI name="stVal" sAddr="&lt;B02.goose.dp_soe_out_003"/>
							<DAI name="q" sAddr="&lt;B02.goose.dp_soe_out_003_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.dp_soe_out_003_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.dp_soe_out_003">
								<Val>GOOSE接收双点遥信3</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO4" desc="GOOSE接收双点遥信4">
							<DAI name="stVal" sAddr="&lt;B02.goose.dp_soe_out_004"/>
							<DAI name="q" sAddr="&lt;B02.goose.dp_soe_out_004_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.dp_soe_out_004_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.dp_soe_out_004">
								<Val>GOOSE接收双点遥信4</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO5" desc="GOOSE接收双点遥信5">
							<DAI name="stVal" sAddr="&lt;B02.goose.dp_soe_out_005"/>
							<DAI name="q" sAddr="&lt;B02.goose.dp_soe_out_005_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.dp_soe_out_005_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.dp_soe_out_005">
								<Val>GOOSE接收双点遥信5</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO6" desc="GOOSE接收双点遥信6">
							<DAI name="stVal" sAddr="&lt;B02.goose.dp_soe_out_006"/>
							<DAI name="q" sAddr="&lt;B02.goose.dp_soe_out_006_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.dp_soe_out_006_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.dp_soe_out_006">
								<Val>GOOSE接收双点遥信6</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO7" desc="GOOSE接收双点遥信7">
							<DAI name="stVal" sAddr="&lt;B02.goose.dp_soe_out_007"/>
							<DAI name="q" sAddr="&lt;B02.goose.dp_soe_out_007_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.dp_soe_out_007_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.dp_soe_out_007">
								<Val>GOOSE接收双点遥信7</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO8" desc="GOOSE接收双点遥信8">
							<DAI name="stVal" sAddr="&lt;B02.goose.dp_soe_out_008"/>
							<DAI name="q" sAddr="&lt;B02.goose.dp_soe_out_008_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.dp_soe_out_008_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.dp_soe_out_008">
								<Val>GOOSE接收双点遥信8</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOIN" lnClass="GGIO" lnType="GDNR_V1_DPC8_GGIO_NSR-3613A-N" inst="3" desc="GOOSE接收双点">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO1" desc="GOOSE接收双点遥信9">
							<DAI name="stVal" sAddr="&lt;B02.goose.dp_soe_out_009"/>
							<DAI name="q" sAddr="&lt;B02.goose.dp_soe_out_009_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.dp_soe_out_009_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.dp_soe_out_009">
								<Val>GOOSE接收双点遥信9</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO2" desc="GOOSE接收双点遥信10">
							<DAI name="stVal" sAddr="&lt;B02.goose.dp_soe_out_010"/>
							<DAI name="q" sAddr="&lt;B02.goose.dp_soe_out_010_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.dp_soe_out_010_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.dp_soe_out_010">
								<Val>GOOSE接收双点遥信10</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO3" desc="可控双点3">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU">
								<Val>可控双点3</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO4" desc="可控双点4">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU">
								<Val>可控双点4</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO5" desc="可控双点5">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU">
								<Val>可控双点5</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO6" desc="可控双点6">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU">
								<Val>可控双点6</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO7" desc="可控双点7">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU">
								<Val>可控双点7</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO8" desc="可控双点8">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU">
								<Val>可控双点8</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOIN" lnClass="GGIO" lnType="GDNR_V1_AnIn8_GGIO_NSR-3613A-N" inst="4" desc="GOOSE接收浮点">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="AnIn1" desc="GOOSE接收浮点值1">
							<SDI name="mag">
								<DAI name="f" sAddr="&lt;B02.goose.yc_out_001"/>
							</SDI>
							<DAI name="q" sAddr="&lt;B02.goose.yc_out_001_q"/>
							<DAI name="dU" sAddr="B02.goose.yc_out_001">
								<Val>GOOSE接收浮点值1</Val>
							</DAI>
						</DOI>
						<DOI name="AnIn2" desc="GOOSE接收浮点值2">
							<SDI name="mag">
								<DAI name="f" sAddr="&lt;B02.goose.yc_out_002"/>
							</SDI>
							<DAI name="q" sAddr="&lt;B02.goose.yc_out_002_q"/>
							<DAI name="dU" sAddr="B02.goose.yc_out_002">
								<Val>GOOSE接收浮点值2</Val>
							</DAI>
						</DOI>
						<DOI name="AnIn3" desc="GOOSE接收浮点值3">
							<SDI name="mag">
								<DAI name="f" sAddr="&lt;B02.goose.yc_out_003"/>
							</SDI>
							<DAI name="q" sAddr="&lt;B02.goose.yc_out_003_q"/>
							<DAI name="dU" sAddr="B02.goose.yc_out_003">
								<Val>GOOSE接收浮点值3</Val>
							</DAI>
						</DOI>
						<DOI name="AnIn4" desc="GOOSE接收浮点值4">
							<SDI name="mag">
								<DAI name="f" sAddr="&lt;B02.goose.yc_out_004"/>
							</SDI>
							<DAI name="q" sAddr="&lt;B02.goose.yc_out_004_q"/>
							<DAI name="dU" sAddr="B02.goose.yc_out_004">
								<Val>GOOSE接收浮点值4</Val>
							</DAI>
						</DOI>
						<DOI name="AnIn5" desc="GOOSE接收浮点值5">
							<SDI name="mag">
								<DAI name="f" sAddr="&lt;B02.goose.yc_out_005"/>
							</SDI>
							<DAI name="q" sAddr="&lt;B02.goose.yc_out_005_q"/>
							<DAI name="dU" sAddr="B02.goose.yc_out_005">
								<Val>GOOSE接收浮点值5</Val>
							</DAI>
						</DOI>
						<DOI name="AnIn6" desc="GOOSE接收浮点值6">
							<SDI name="mag">
								<DAI name="f" sAddr="&lt;B02.goose.yc_out_006"/>
							</SDI>
							<DAI name="q" sAddr="&lt;B02.goose.yc_out_006_q"/>
							<DAI name="dU" sAddr="B02.goose.yc_out_006">
								<Val>GOOSE接收浮点值6</Val>
							</DAI>
						</DOI>
						<DOI name="AnIn7" desc="GOOSE接收浮点值7">
							<SDI name="mag">
								<DAI name="f" sAddr="&lt;B02.goose.yc_out_007"/>
							</SDI>
							<DAI name="q" sAddr="&lt;B02.goose.yc_out_007_q"/>
							<DAI name="dU" sAddr="B02.goose.yc_out_007">
								<Val>GOOSE接收浮点值7</Val>
							</DAI>
						</DOI>
						<DOI name="AnIn8" desc="GOOSE接收浮点值8">
							<SDI name="mag">
								<DAI name="f" sAddr="&lt;B02.goose.yc_out_008"/>
							</SDI>
							<DAI name="q" sAddr="&lt;B02.goose.yc_out_008_q"/>
							<DAI name="dU" sAddr="B02.goose.yc_out_008">
								<Val>GOOSE接收浮点值8</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOOUT" lnClass="GGIO" lnType="GDNR_V1_DPS8_GGIO_NSR-3613A-N" inst="1" desc="双点互锁状态输出">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO1" desc="断路器位置">
							<DAI name="stVal" sAddr="B02.CNST_YX.twinsYx[0].value">
								<Private type="ACT">2</Private>
							</DAI>
							<DAI name="q"/>
							<DAI name="t"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.twinsYx[0].value">
								<Val>断路器位置</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO2" desc="双点遥信开入1">
							<DAI name="stVal" sAddr="B02.CNST_YX.twinsYx[1].value"/>
							<DAI name="q"/>
							<DAI name="t"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.twinsYx[1].value">
								<Val>双点遥信开入1</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO3" desc="双点遥信开入2">
							<DAI name="stVal" sAddr="B02.CNST_YX.twinsYx[2].value"/>
							<DAI name="q"/>
							<DAI name="t"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.twinsYx[2].value">
								<Val>双点遥信开入2</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO4" desc="双点遥信开入3">
							<DAI name="stVal" sAddr="B02.CNST_YX.twinsYx[3].value"/>
							<DAI name="q"/>
							<DAI name="t"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.twinsYx[3].value">
								<Val>双点遥信开入3</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOOUT" lnClass="GGIO" lnType="GDNR_V1_SPS32_GGIO_NSR-3613A-N" inst="2" desc="单点互锁状态输出">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="性能">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="遥信开入1">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN1].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN1].value">
								<Val>遥信开入1</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="遥信开入2">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN2].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN2].value">
								<Val>遥信开入2</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="遥信开入3">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN3].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN3].value">
								<Val>遥信开入3</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="遥信开入4">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN4].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN4].value">
								<Val>遥信开入4</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="遥信开入5">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN5].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN5].value">
								<Val>遥信开入5</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="遥信开入6">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN6].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN6].value">
								<Val>遥信开入6</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="遥信开入7">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN7].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN7].value">
								<Val>遥信开入7</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="遥信开入8">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN8].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN8].value">
								<Val>遥信开入8</Val>
							</DAI>
						</DOI>
						<DOI name="Ind9" desc="遥信开入9">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN9].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN9].value">
								<Val>遥信开入9</Val>
							</DAI>
						</DOI>
						<DOI name="Ind10" desc="遥信开入10">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN10].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN10].value">
								<Val>遥信开入10</Val>
							</DAI>
						</DOI>
						<DOI name="Ind11" desc="遥信开入11">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN11].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN11].value">
								<Val>遥信开入11</Val>
							</DAI>
						</DOI>
						<DOI name="Ind12" desc="遥信开入12">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN12].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN12].value">
								<Val>遥信开入12</Val>
							</DAI>
						</DOI>
						<DOI name="Ind13" desc="遥信开入13">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN13].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN13].value">
								<Val>遥信开入13</Val>
							</DAI>
						</DOI>
						<DOI name="Ind14" desc="遥信开入14">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN14].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN14].value">
								<Val>遥信开入14</Val>
							</DAI>
						</DOI>
						<DOI name="Ind15" desc="遥信开入15">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN15].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN15].value">
								<Val>遥信开入15</Val>
							</DAI>
						</DOI>
						<DOI name="Ind16" desc="遥信开入16">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN16].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN16].value">
								<Val>遥信开入16</Val>
							</DAI>
						</DOI>
						<DOI name="Ind17" desc="遥信开入17">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN17].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN17].value">
								<Val>遥信开入17</Val>
							</DAI>
						</DOI>
						<DOI name="Ind18" desc="遥信开入18">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SIN18].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN18].value">
								<Val>遥信开入18</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="CILO" lnType="GDNR_V1_CILO_NSR-3613A-N" inst="1" desc="断路器遥控联闭锁">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="EnaOpn" desc="断路器遥控分允许">
							<DAI name="stVal" sAddr="B02.CNST_YK.ykOpenPermit[0]"/>
							<DAI name="dU" sAddr="B02.CNST_YK.ykOpenPermit[0]">
								<Val>断路器遥控分允许</Val>
							</DAI>
						</DOI>
						<DOI name="EnaCls" desc="断路器遥控合允许">
							<DAI name="stVal" sAddr="B02.CNST_YK.ykClosePermit[0]"/>
							<DAI name="dU" sAddr="B02.CNST_YK.ykClosePermit[0]">
								<Val>断路器遥控合允许</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="CILO" lnType="GDNR_V1_CILO_NSR-3613A-N" inst="2" desc="手车1遥控闭锁">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="EnaOpn" desc="手车1遥控分允许">
							<DAI name="stVal" sAddr="B02.CNST_YK.ykOpenPermit[1]"/>
							<DAI name="dU" sAddr="B02.CNST_YK.ykOpenPermit[1]">
								<Val>手车1遥控分允许</Val>
							</DAI>
						</DOI>
						<DOI name="EnaCls" desc="手车1遥控合允许">
							<DAI name="stVal" sAddr="B02.CNST_YK.ykClosePermit[1]"/>
							<DAI name="dU" sAddr="B02.CNST_YK.ykClosePermit[1]">
								<Val>手车1遥控合允许</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="CILO" lnType="GDNR_V1_CILO_NSR-3613A-N" inst="3" desc="手车2遥控联闭锁">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="EnaOpn" desc="手车2遥控分允许">
							<DAI name="stVal" sAddr="B02.CNST_YK.ykOpenPermit[2]"/>
							<DAI name="dU" sAddr="B02.CNST_YK.ykOpenPermit[2]">
								<Val>手车2遥控分允许</Val>
							</DAI>
						</DOI>
						<DOI name="EnaCls" desc="手车2遥控合允许">
							<DAI name="stVal" sAddr="B02.CNST_YK.ykClosePermit[2]"/>
							<DAI name="dU" sAddr="B02.CNST_YK.ykClosePermit[2]">
								<Val>手车2遥控合允许</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="CILO" lnType="GDNR_V1_CILO_NSR-3613A-N" inst="4" desc="刀闸遥控联闭锁">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="EnaOpn" desc="接地刀闸遥控分允许">
							<DAI name="stVal" sAddr="B02.CNST_YK.ykOpenPermit[3]"/>
							<DAI name="dU" sAddr="B02.CNST_YK.ykOpenPermit[3]">
								<Val>接地刀闸遥控分允许</Val>
							</DAI>
						</DOI>
						<DOI name="EnaCls" desc="接地刀闸遥控合允许">
							<DAI name="stVal" sAddr="B02.CNST_YK.ykClosePermit[3]"/>
							<DAI name="dU" sAddr="B02.CNST_YK.ykClosePermit[3]">
								<Val>接地刀闸遥控合允许</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="YYB" lnClass="GGIO" lnType="GDNR_V1_IND8_GGIO_NSR-3613A-N" inst="1" desc="硬压板">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="手合同期开入">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_SHTQ].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SHTQ].value">
								<Val>手合同期开入</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="远方操作硬压板">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_CKYF].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_CKYF].value">
								<Val>远方操作硬压板</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="同期开入硬压板">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYx[YX_TQKR].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_TQKR].value">
								<Val>同期开入硬压板</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="RYB" lnClass="GGIO" lnType="GDNR_V1_SPC8_GGIO_NSR-3613A-N" inst="1" desc="同期功能软压板">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO1" desc="检同期软压板投入">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.DigOrder06"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.DigOrder06"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.DigOrder06"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.RS_TotalEvt.syncSt"/>
							<DAI name="q"/>
							<DAI name="t"/>
							<DAI name="ctlModel">
								<Val sGroup="0">sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val sGroup="0">20000</Val>
							</DAI>
							<DAI name="dU">
								<Val>检同期软压板投入</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO2" desc="检无压软压板投入">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.DigOrder07"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.DigOrder07"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.DigOrder07"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.RS_TotalEvt.deadSt"/>
							<DAI name="q"/>
							<DAI name="t"/>
							<DAI name="ctlModel">
								<Val sGroup="0">sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val sGroup="0">20000</Val>
							</DAI>
							<DAI name="dU">
								<Val>检无压软压板投入</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO3" desc="不检定软压板投入">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.DigOrder08"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.DigOrder08"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.DigOrder08"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.RS_TotalEvt.forceSt"/>
							<DAI name="q"/>
							<DAI name="t"/>
							<DAI name="ctlModel">
								<Val sGroup="0">sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val sGroup="0">20000</Val>
							</DAI>
							<DAI name="dU">
								<Val>不检定软压板投入</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO4" desc="检合环软压板投入">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.DigOrder09"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.DigOrder09"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.DigOrder09"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.RS_TotalEvt.hhSt"/>
							<DAI name="q"/>
							<DAI name="t"/>
							<DAI name="ctlModel">
								<Val sGroup="0">sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val sGroup="0">20000</Val>
							</DAI>
							<DAI name="dU">
								<Val>检合环软压板投入</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO5" desc="同期退出软压板投入">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.MANUAL_OP.ptPara_SynEn"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.MANUAL_OP.ptPara_SynEn"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.MANUAL_OP.ptPara_SynEn"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.MANUAL_OP.ptPara_SynEn"/>
							<DAI name="q"/>
							<DAI name="t"/>
							<DAI name="ctlModel">
								<Val sGroup="0">sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val sGroup="0">20000</Val>
							</DAI>
							<DAI name="dU">
								<Val>同期退出软压板投入</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO6" desc="可控单点6/GOOSE输入虚端子">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU">
								<Val>可控单点6/GOOSE输入虚端子</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO7" desc="可控单点7/GOOSE输入虚端子">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU">
								<Val>可控单点7/GOOSE输入虚端子</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO8" desc="可控单点8/GOOSE输入虚端子">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU">
								<Val>可控单点8/GOOSE输入虚端子</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="BI" lnClass="GGIO" lnType="GDNR_V1_SPS32_GGIO_NSR-3613A-N" inst="1" desc="控制结果信息1">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="性能">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="操作成功">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx0"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx0">
								<Val>操作成功</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="操作失败">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx1"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx1">
								<Val>操作失败</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="抽取侧有压">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx2"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx2">
								<Val>抽取侧有压</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="系统侧有压">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx3"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx3">
								<Val>系统侧有压</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="两侧有压">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx4"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx4">
								<Val>两侧有压</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="两侧无压">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx5"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx5">
								<Val>两侧无压</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="抽取侧电压低">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx6"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx6">
								<Val>抽取侧电压低</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="系统侧电压低">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx7"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx7">
								<Val>系统侧电压低</Val>
							</DAI>
						</DOI>
						<DOI name="Ind9" desc="压差太大">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx8"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx8">
								<Val>压差太大</Val>
							</DAI>
						</DOI>
						<DOI name="Ind10" desc="频差太大">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx9"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx9">
								<Val>频差太大</Val>
							</DAI>
						</DOI>
						<DOI name="Ind11" desc="滑差太大">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx10"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx10">
								<Val>滑差太大</Val>
							</DAI>
						</DOI>
						<DOI name="Ind12" desc="角差太大">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx11"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx11">
								<Val>角差太大</Val>
							</DAI>
						</DOI>
						<DOI name="Ind13" desc="PT断线闭锁">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx12"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx12">
								<Val>PT断线闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="Ind14" desc="同期超时">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx13"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx13">
								<Val>同期超时</Val>
							</DAI>
						</DOI>
						<DOI name="Ind15" desc="抽取侧电压高">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx14"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx14">
								<Val>抽取侧电压高</Val>
							</DAI>
						</DOI>
						<DOI name="Ind16" desc="系统侧电压高">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx15"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx15">
								<Val>系统侧电压高</Val>
							</DAI>
						</DOI>
						<DOI name="Ind17" desc="逻辑错">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx16"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx16">
								<Val>逻辑错</Val>
							</DAI>
						</DOI>
						<DOI name="Ind18" desc="控制忙">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx17"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx17">
								<Val>控制忙</Val>
							</DAI>
						</DOI>
						<DOI name="Ind19" desc="检修投入">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx18"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx18">
								<Val>检修投入</Val>
							</DAI>
						</DOI>
						<DOI name="Ind20" desc="手动把手投入">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx19"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx19">
								<Val>手动把手投入</Val>
							</DAI>
						</DOI>
						<DOI name="Ind21" desc="角度定值异常">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx20"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx20">
								<Val>角度定值异常</Val>
							</DAI>
						</DOI>
						<DOI name="Ind22" desc="系统侧频率低">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx21"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx21">
								<Val>系统侧频率低</Val>
							</DAI>
						</DOI>
						<DOI name="Ind23" desc="系统侧频率高">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx22"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx22">
								<Val>系统侧频率高</Val>
							</DAI>
						</DOI>
						<DOI name="Ind24" desc="抽取侧频率低">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx23"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx23">
								<Val>抽取侧频率低</Val>
							</DAI>
						</DOI>
						<DOI name="Ind25" desc="抽取侧频率高">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx24"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx24">
								<Val>抽取侧频率高</Val>
							</DAI>
						</DOI>
						<DOI name="Ind26" desc="合环条件不满足">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx25"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx25">
								<Val>合环条件不满足</Val>
							</DAI>
						</DOI>
						<DOI name="Ind27" desc="保护启动闭锁遥控">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx26"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx26">
								<Val>保护启动闭锁遥控</Val>
							</DAI>
						</DOI>
						<DOI name="Ind28" desc="远方就地不对应">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx27"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx27">
								<Val>远方就地不对应</Val>
							</DAI>
						</DOI>
						<DOI name="Ind29" desc="出口回读异常">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx28"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx28">
								<Val>出口回读异常</Val>
							</DAI>
						</DOI>
						<DOI name="Ind31" desc="控制命令错">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx30"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx30">
								<Val>控制命令错</Val>
							</DAI>
						</DOI>
						<DOI name="Ind32" desc="手合同期出口">
							<DAI name="stVal" sAddr="B02.MANUAL_OP.cManLockBits"/>
							<DAI name="dU" sAddr="B02.MANUAL_OP.cManLockBits">
								<Val>手合同期出口</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="BI" lnClass="GGIO" lnType="GDNR_V1_SPS32_GGIO_NSR-3613A-N" inst="2" desc="控制结果信息2">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="性能">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="其他软压板已投入">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx29"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx29">
								<Val>其他软压板已投入</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="本软压板已投入">
							<DAI name="stVal" sAddr="B02.MCU_Result.cResultYx31"/>
							<DAI name="dU" sAddr="B02.MCU_Result.cResultYx31">
								<Val>本软压板已投入</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice inst="PROT" desc="保护">
					<LN0 lnClass="LLN0" lnType="GDNR_V5_LLN0_NSR-3613A-N" inst="" desc="保护逻辑节点0">
						<DataSet name="dsParameter" desc="设备参数定值">
							<FCDA ldInst="PROT" lnClass="LPHD" lnInst="1" doName="SettingGrp" fc="SP"/>
							<FCDA ldInst="PROT" lnClass="LPHD" lnInst="1" doName="StaName" fc="SP"/>
							<FCDA ldInst="PROT" lnClass="LPHD" lnInst="1" doName="DeviceName" fc="SP"/>
							<FCDA ldInst="PROT" prefix="I" lnClass="TCTR" lnInst="1" doName="ARtg" fc="SP"/>
							<FCDA ldInst="PROT" prefix="I" lnClass="TCTR" lnInst="1" doName="ARtgSnd" fc="SP"/>
							<FCDA ldInst="PROT" prefix="U" lnClass="TVTR" lnInst="1" doName="VRtg" fc="SP"/>
						</DataSet>
						<DataSet name="dsRelayDin" desc="保护遥信数据集">
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="1" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="1" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="1" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="1" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="1" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="2" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="2" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="LEDRs" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="2" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="2" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="2" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="2" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="2" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="2" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="3" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="3" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="3" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="3" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="3" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="3" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="3" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GGIO" lnInst="1" doName="DPCSO1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind9" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind10" fc="ST"/>
						</DataSet>
						<DataSet name="dsRelayAin" desc="模拟量">
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="PhV.phsA" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="PhV.phsB" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="PhV.phsC" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MSQI" lnInst="1" doName="SeqV.c3" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="A.phsA" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="A.phsB" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="A.phsC" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="PPV.phsAB" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="PPV.phsBC" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="PPV.phsCA" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MSQI" lnInst="1" doName="SeqV.c1" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MSQI" lnInst="1" doName="SeqV.c2" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MSQI" lnInst="1" doName="SeqA.c1" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX"/>
						</DataSet>
						<DataSet name="dsTripInfo" desc="保护事件数据集">
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Str" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="2" doName="Op" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="PTRC" lnInst="1" doName="Op" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="PTRC" lnInst="2" doName="Op" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GGIO" lnInst="2" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GGIO" lnInst="2" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GGIO" lnInst="2" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GGIO" lnInst="2" doName="Ind4" fc="ST"/>
						</DataSet>
						<DataSet name="dsWarning" desc="告警信号数据集">
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm9" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm10" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm11" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm12" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm13" fc="ST"/>
						</DataSet>
						<DataSet name="dsSetting" desc="保护定值数据集">
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="StrVal" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="OpDlTmms" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="2" doName="StrVal" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="2" doName="OpDlTmms" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Enable" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="2" doName="Enable" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="TVTR" lnInst="1" doName="PTFChkEna" fc="SG"/>
						</DataSet>
						<DataSet name="dsRelayEna" desc="保护压板数据集">
							<FCDA ldInst="PROT" lnClass="LLN0" doName="RemStrpEna" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="RemGrpEna" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="RemSetEna" fc="ST"/>
						</DataSet>
						<DataSet name="dsRelayBlk" desc="保护功能闭锁数据集">
							<FCDA ldInst="PROT" prefix="RBlk" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
						</DataSet>
						<DataSet name="dsRelayState" desc="保护功能状态数据集">
							<FCDA ldInst="PROT" prefix="RSta" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="RSta" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
						</DataSet>
						<DataSet name="dsLog" desc="日志记录数据集">
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="1" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="1" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="1" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="1" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="1" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="2" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="2" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="LEDRs" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="2" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="2" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="2" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="2" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="2" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="2" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="3" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="3" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="3" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="3" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="3" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="3" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BO" lnClass="GGIO" lnInst="3" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Str" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="2" doName="Op" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="PTRC" lnInst="1" doName="Op" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="PTRC" lnInst="2" doName="Op" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GGIO" lnInst="2" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GGIO" lnInst="2" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GGIO" lnInst="2" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GGIO" lnInst="2" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm9" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm10" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm11" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm12" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm13" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="RemStrpEna" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="RemGrpEna" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="RemSetEna" fc="ST"/>
							<FCDA ldInst="PROT" prefix="RBlk" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="RSta" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="RSta" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind9" fc="ST"/>
							<FCDA ldInst="PROT" prefix="G0" lnClass="GGIO" lnInst="1" doName="Ind10" fc="ST"/>
						</DataSet>
						<DataSet name="dsTripParaInfo" desc="故障量数据集">
							<FCDA ldInst="PROT" lnClass="RFLO" lnInst="1" doName="FltAPhA" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="RFLO" lnInst="1" doName="FltAPhB" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="RFLO" lnInst="1" doName="FltAPhC" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="RFLO" lnInst="1" doName="FltExtA0" fc="MX"/>
						</DataSet>
						<ReportControl name="urcbRelayAin" datSet="dsRelayAin" intgPd="1800000" rptID="PROT/LLN0$RP$urcbRelayAin" confRev="1" buffered="false" bufTime="0">
							<TrgOps dchg="true" period="true"/>
							<OptFields seqNum="true" timeStamp="false" dataSet="false" reasonCode="false" dataRef="false" entryID="false" configRef="false"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="brcbTripInfo" datSet="dsTripInfo" intgPd="300000" rptID="PROT/LLN0$BR$brcbTripInfo" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="false" dupd="false" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="brcbRelayDin" datSet="dsRelayDin" intgPd="300000" rptID="PROT/LLN0$BR$brcbRelayDin" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="false" dupd="false" period="true"/>
							<OptFields seqNum="false" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="brcbRelayEna" datSet="dsRelayEna" intgPd="300000" rptID="PROT/LLN0$BR$brcbRelayEna" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="false" dupd="false" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="brcbWarning" datSet="dsWarning" intgPd="0" rptID="PROT/LLN0$BR$brcbWarning" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="true" dupd="false" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="false"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="brcbRelayState" datSet="dsRelayState" intgPd="0" rptID="PROT/LLN0$BR$brcbRelayState" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="true" dupd="false" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="false"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="brcbRelayBlk" datSet="dsRelayBlk" intgPd="0" rptID="PROT/LLN0$BR$brcbRelayBlk" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="true" dupd="false" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="false"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="brcbTripParaInfo" datSet="dsTripParaInfo" intgPd="0" rptID="PROT/LLN0$BR$brcbTripParaInfo" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="true" dupd="false" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="false"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<LogControl name="lcbPROT" desc="PROT日志控制块" datSet="dsLog" intgPd="360000" logName="PROT" logEna="false">
							<TrgOps dchg="true" qchg="false" dupd="false" period="false"/>
						</LogControl>
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="逻辑节点铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>逻辑节点铭牌</Val>
							</DAI>
							<DAI name="configRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2003</Val>
							</DAI>
						</DOI>
						<DOI name="LEDRs" desc="61850远方信号复归">
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B01.iec61850.signal_rst"/>
							</SDI>
							<DAI name="stVal" sAddr="B01.iec61850.signal_rst"/>
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
							<DAI name="dU" sAddr="B01.iec61850.signal_rst">
								<Val>61850远方信号复归</Val>
							</DAI>
						</DOI>
						<DOI name="RemSetEna" desc="远方修改定值软压板">
							<DAI name="stVal" sAddr="B01.iec61850.remote_modify_set"/>
							<DAI name="dU" sAddr="B01.iec61850.remote_modify_set">
								<Val>远方修改定值软压板</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="RemGrpEna" desc="远方切换定值区软压板">
							<DAI name="stVal" sAddr="B01.iec61850.remote_setting_grp_strp"/>
							<DAI name="dU" sAddr="B01.iec61850.remote_setting_grp_strp">
								<Val>远方切换定值区软压板</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="RemStrpEna" desc="远方投退压板软压板">
							<DAI name="stVal" sAddr="B01.iec61850.remote_ctrl_strp"/>
							<DAI name="dU" sAddr="B01.iec61850.remote_ctrl_strp">
								<Val>远方投退压板软压板</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<SettingControl numOfSGs="10" actSG="1"/>
					</LN0>
					<LN lnClass="LPHD" lnType="GDNR_V4_LPHD_NSR-3613A-N" inst="1" desc="装置物理信息">
						<DOI name="PhyNam" desc="物理装置铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>NSR-3613A-N V1.01 2018-10-13 09:54:18 506A8D87</Val>
							</DAI>
						</DOI>
						<DOI name="PhyHealth" desc="物理装置健康状况"/>
						<DOI name="Proxy" desc="是否为代理">
							<DAI name="dU">
								<Val>是否为代理</Val>
							</DAI>
						</DOI>
						<DOI name="SettingGrp" desc="定值区号">
							<DAI name="setVal" sAddr="B01.iec61850.current_setting_group"/>
							<DAI name="minVal" sAddr="B01.iec61850.current_setting_group">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B01.iec61850.current_setting_group">
								<Val>10</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B01.iec61850.current_setting_group">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B01.iec61850.current_setting_group">
								<Val>定值区号</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B01.iec61850.current_setting_group">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="DeviceName" desc="一次设备名称">
							<DAI name="setVal" sAddr="B01.print.device_no"/>
							<DAI name="dU" sAddr="B01.print.device_no">
								<Val>一次设备名称</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="StaName" desc="厂站名称">
							<DAI name="setVal" sAddr="B01.print.station_name"/>
							<DAI name="dU" sAddr="B01.print.station_name">
								<Val>厂站名称</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="I" lnClass="TCTR" lnType="GDNR_V2_TCTR_NSR-3613A-N" inst="1" desc="保护CT">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="保护CT一次额定值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_GeneralSetting.PI1st"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_GeneralSetting.PI1st">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_GeneralSetting.PI1st"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_GeneralSetting.PI1st"/>
								<DAI name="offset" sAddr="B02.CNST_GeneralSetting.PI1st"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_GeneralSetting.PI1st">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_GeneralSetting.PI1st">
									<Val>9999</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_GeneralSetting.PI1st">
									<Val>1.0</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PI1st">
								<Val>保护CT一次额定值</Val>
							</DAI>
						</DOI>
						<DOI name="ARtgSnd" desc="保护CT二次额定值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_GeneralSetting.PI2nd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_GeneralSetting.PI2nd">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_GeneralSetting.PI2nd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_GeneralSetting.PI2nd"/>
								<DAI name="offset" sAddr="B02.CNST_GeneralSetting.PI2nd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_GeneralSetting.PI2nd">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_GeneralSetting.PI2nd">
									<Val>5</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_GeneralSetting.PI2nd">
									<Val>0.1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PI2nd">
								<Val>保护CT二次额定值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_GeneralSetting.PI2nd">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="U" lnClass="TVTR" lnType="GDNR_V1_TVTR_NSR-3613A-N" inst="1" desc="PT一次值">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="逻辑节点铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="d">
								<Val>铭牌</Val>
							</DAI>
							<DAI name="dU">
								<Val>逻辑节点铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="VRtg" desc="母线侧额定一次电压">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_pt1"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.MCU_Cal_Block.yc1_pt1">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.MCU_Cal_Block.yc1_pt1">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.MCU_Cal_Block.yc1_pt1"/>
								<DAI name="offset" sAddr="B02.MCU_Cal_Block.yc1_pt1"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_pt1">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_pt1">
									<Val>150</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_pt1">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.MCU_Cal_Block.yc1_pt1">
								<Val>母线侧额定一次电压</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="PTOC" lnType="GDNR_V3_PTOC_NSR-3613A-N" inst="1" desc="过流Ⅰ段">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="保护启动">
							<DAI name="general" sAddr="B02.CNST_relayQd.AlloutPutBOOL"/>
							<DAI name="dU" sAddr="B02.CNST_relayQd.AlloutPutBOOL">
								<Val>保护启动</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="过流Ⅰ段动作">
							<DAI name="general" sAddr="B02.CNST_relayOverCurrent1.actPhase"/>
							<DAI name="dU" sAddr="B02.CNST_relayOverCurrent1.actPhase">
								<Val>过流Ⅰ段动作</Val>
							</DAI>
						</DOI>
						<DOI name="StrVal" desc="过流Ⅰ段定值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_relayOverCurrent1.Izd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_relayOverCurrent1.Izd">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_relayOverCurrent1.Izd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_relayOverCurrent1.Izd"/>
								<DAI name="offset" sAddr="B02.CNST_relayOverCurrent1.Izd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_relayOverCurrent1.Izd">
									<Val>0.04</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_relayOverCurrent1.Izd">
									<Val>20</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_relayOverCurrent1.Izd">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_relayOverCurrent1.Izd">
								<Val>过流Ⅰ段定值</Val>
							</DAI>
						</DOI>
						<DOI name="OpDlTmms" desc="过流Ⅰ段时间">
							<DAI name="setVal" sAddr="B02.CNST_relayOverCurrent1.Tzd"/>
							<DAI name="minVal" sAddr="B02.CNST_relayOverCurrent1.Tzd">
								<Val>10</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_relayOverCurrent1.Tzd">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_relayOverCurrent1.Tzd">
								<Val>10</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_relayOverCurrent1.Tzd">
								<Val>过流Ⅰ段时间</Val>
							</DAI>
						</DOI>
						<DOI name="Enable" desc="过流Ⅰ段">
							<DAI name="setVal" sAddr="B02.CNST_relayOverCurrent1.ctrl"/>
							<DAI name="dU" sAddr="B02.CNST_relayOverCurrent1.ctrl">
								<Val>过流Ⅰ段</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="PTOC" lnType="GDNR_V3_PTOC_NSR-3613A-N" inst="2" desc="过流Ⅱ段">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="过流Ⅱ段动作">
							<DAI name="general" sAddr="B02.CNST_relayOverCurrent2.actPhase"/>
							<DAI name="dU" sAddr="B02.CNST_relayOverCurrent2.actPhase">
								<Val>过流Ⅱ段动作</Val>
							</DAI>
						</DOI>
						<DOI name="StrVal" desc="过流Ⅱ段定值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_relayOverCurrent2.Izd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_relayOverCurrent2.Izd">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_relayOverCurrent2.Izd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_relayOverCurrent2.Izd"/>
								<DAI name="offset" sAddr="B02.CNST_relayOverCurrent2.Izd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_relayOverCurrent2.Izd">
									<Val>0.04</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_relayOverCurrent2.Izd">
									<Val>20</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_relayOverCurrent2.Izd">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_relayOverCurrent2.Izd">
								<Val>过流Ⅱ段定值</Val>
							</DAI>
						</DOI>
						<DOI name="OpDlTmms" desc="过流Ⅱ段时间">
							<DAI name="setVal" sAddr="B02.CNST_relayOverCurrent2.Tzd"/>
							<DAI name="minVal" sAddr="B02.CNST_relayOverCurrent2.Tzd">
								<Val>10</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_relayOverCurrent2.Tzd">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_relayOverCurrent2.Tzd">
								<Val>10</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_relayOverCurrent2.Tzd">
								<Val>过流Ⅱ段时间</Val>
							</DAI>
						</DOI>
						<DOI name="Enable" desc="过流Ⅱ段">
							<DAI name="setVal" sAddr="B02.CNST_relayOverCurrent2.ctrl"/>
							<DAI name="dU" sAddr="B02.CNST_relayOverCurrent2.ctrl">
								<Val>过流Ⅱ段</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TVTR" lnType="GDNR_V1_TVTR_NSR-3613A-N" inst="1" desc="PT断线自检">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="PTFChkEna" desc="PT断线检测">
							<DAI name="setVal" sAddr="B02.CNST_relayPTDX.ctrl"/>
							<DAI name="dU" sAddr="B02.CNST_relayPTDX.ctrl">
								<Val>PT断线检测</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXU" lnType="GDNR_V1_MMXU_NSR-3613A-N" inst="1" desc="保护测量">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Hz" desc="F">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_FR_RLY_UAB].fAm"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>1.0</Val>
								</DAI>
								<DAI name="offset">
									<Val>0.0</Val>
								</DAI>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>45</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>55</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>1</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_InstCal.tOpADVector[EN_FR_RLY_UAB].fAm">
								<Val>F</Val>
							</DAI>
						</DOI>
						<DOI name="PPV" desc="线电压">
							<SDI name="phsAB" desc="AB相间电压">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UAB].fAm"/>
									</SDI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="f">
											<Val>150.0</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>1.0</Val>
									</DAI>
									<DAI name="offset">
										<Val>0.0</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
								<DAI name="dU">
									<Val>AB相间电压</Val>
								</DAI>
							</SDI>
							<SDI name="phsBC" desc="BC相间电压">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UBC].fAm"/>
									</SDI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="f">
											<Val>150.0</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>1.0</Val>
									</DAI>
									<DAI name="offset">
										<Val>0.0</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
								<DAI name="dU">
									<Val>BC相间电压</Val>
								</DAI>
							</SDI>
							<SDI name="phsCA" desc="CA相间电压">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UCA].fAm"/>
									</SDI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="f">
											<Val>150.0</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>1.0</Val>
									</DAI>
									<DAI name="offset">
										<Val>0.0</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
								<DAI name="dU">
									<Val>CA相间电压</Val>
								</DAI>
							</SDI>
							<DAI name="dU">
								<Val>线电压</Val>
							</DAI>
						</DOI>
						<DOI name="PhV" desc="相电压">
							<SDI name="phsA" desc="A相电压">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UA].fAm"/>
									</SDI>
									<SDI name="ang">
										<DAI name="f" sAddr="B02.CNST_InstCal.Angle[Angle_Ua]"/>
									</SDI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="f">
											<Val>150.0</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>1.0</Val>
									</DAI>
									<DAI name="offset">
										<Val>0.0</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
								<DAI name="dU">
									<Val>A相电压</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="B相电压">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UB].fAm"/>
									</SDI>
									<SDI name="ang">
										<DAI name="f" sAddr="B02.CNST_InstCal.Angle[Angle_Ub]"/>
									</SDI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="f">
											<Val>150.0</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>1.0</Val>
									</DAI>
									<DAI name="offset">
										<Val>0.0</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
								<DAI name="dU">
									<Val>B相电压</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="C相电压">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UC].fAm"/>
									</SDI>
									<SDI name="ang">
										<DAI name="f" sAddr="B02.CNST_InstCal.Angle[Angle_Uc]"/>
									</SDI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="f">
											<Val>150.0</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>1.0</Val>
									</DAI>
									<DAI name="offset">
										<Val>0.0</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
								<DAI name="dU">
									<Val>C相电压</Val>
								</DAI>
							</SDI>
							<DAI name="dU">
								<Val>相电压</Val>
							</DAI>
						</DOI>
						<DOI name="A" desc="相电流">
							<SDI name="phsA" desc="保护A相电流">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_CUR_RLY_IA].fAm"/>
									</SDI>
									<SDI name="ang">
										<DAI name="f" sAddr="B02.CNST_InstCal.Angle[Angle_Ia]"/>
									</SDI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="f">
											<Val>30.0</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>1.0</Val>
									</DAI>
									<DAI name="offset">
										<Val>0.0</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
								<DAI name="dU">
									<Val>保护A相电流</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="保护B相电流">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_CUR_RLY_IB].fAm"/>
									</SDI>
									<SDI name="ang">
										<DAI name="f" sAddr="B02.CNST_InstCal.Angle[Angle_Ib]"/>
									</SDI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="f">
											<Val>30.0</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>1.0</Val>
									</DAI>
									<DAI name="offset">
										<Val>0.0</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
								<DAI name="dU">
									<Val>保护B相电流</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="保护C相电流">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_CUR_RLY_IC].fAm"/>
									</SDI>
									<SDI name="ang">
										<DAI name="f" sAddr="B02.CNST_InstCal.Angle[Angle_Ic]"/>
									</SDI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="f">
											<Val>30.0</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>1.0</Val>
									</DAI>
									<DAI name="offset">
										<Val>0.0</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
								<DAI name="dU">
									<Val>保护C相电流</Val>
								</DAI>
							</SDI>
							<DAI name="dU">
								<Val>相电流</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MSQI" lnType="GDNR_V1_MSQI_NSR-3613A-N" inst="1" desc="序分量">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="SeqA" desc="序电流">
							<SDI name="c1" desc="零序电流">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_CUR_RLY_3I0zc].fAm"/>
									</SDI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="f">
											<Val>30.0</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>1.0</Val>
									</DAI>
									<DAI name="offset">
										<Val>0.0</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
								<DAI name="dU">
									<Val>零序电流</Val>
								</DAI>
							</SDI>
							<DAI name="dU">
								<Val>序电流</Val>
							</DAI>
						</DOI>
						<DOI name="SeqV" desc="序电压">
							<SDI name="c1" desc="U1">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_U1].fAm"/>
									</SDI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="f">
											<Val>150.0</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>1.0</Val>
									</DAI>
									<DAI name="offset">
										<Val>0.0</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
								<DAI name="dU">
									<Val>正序电压</Val>
								</DAI>
							</SDI>
							<SDI name="c2" desc="U2">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_U2].fAm"/>
									</SDI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="f">
											<Val>150.0</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>1.0</Val>
									</DAI>
									<DAI name="offset">
										<Val>0.0</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
								<DAI name="dU">
									<Val>负序电压</Val>
								</DAI>
							</SDI>
							<SDI name="c3" desc="Ux">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UX].fAm"/>
									</SDI>
									<SDI name="ang">
										<DAI name="f" sAddr="B02.CNST_InstCal.Angle[Angle_Ux]"/>
									</SDI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="f">
											<Val>150.0</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>1.0</Val>
									</DAI>
									<DAI name="offset">
										<Val>0.0</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
								<DAI name="dU">
									<Val>同期电压</Val>
								</DAI>
							</SDI>
							<DAI name="dU">
								<Val>序电压</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="GGIO" lnType="GDNR_V1_IND8_GGIO_NSR-3613A-N" inst="2" desc="其它信号">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="保护动作">
							<DAI name="stVal" sAddr="B02.CNST_BO.actBtOutPutBOOL"/>
							<DAI name="dU" sAddr="B02.CNST_BO.actBtOutPutBOOL">
								<Val>保护动作</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="合闸动作">
							<DAI name="stVal" sAddr="B02.CNST_BO.actBhOutPutBOOL"/>
							<DAI name="dU" sAddr="B02.CNST_BO.actBhOutPutBOOL">
								<Val>合闸动作</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="手动录波">
							<DAI name="stVal" sAddr="B01.lcd.manual_rec_trigger"/>
							<DAI name="dU" sAddr="B01.lcd.manual_rec_trigger">
								<Val>手动录波</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="103录波">
							<DAI name="stVal" sAddr="B01.iec103.wave_start_trig"/>
							<DAI name="dU" sAddr="B01.iec103.wave_start_trig">
								<Val>103录波</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="PTRC" lnType="GDNR_V1_BASIC_PTRC_NSR-3613A-N" inst="1" desc="GOOSE跳闸动作">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="GOOSE跳闸动作">
							<DAI name="general" sAddr="B02.CNST_Goose.gooseToBo.TripYxTz"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseToBo.TripYxTz">
								<Val>GOOSE跳闸动作</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="PTRC" lnType="GDNR_V1_BASIC_PTRC_NSR-3613A-N" inst="2" desc="GOOSE合闸动作">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="GOOSE合闸动作">
							<DAI name="general" sAddr="B02.CNST_Goose.gooseToBo.TripYxHz"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseToBo.TripYxHz">
								<Val>GOOSE合闸动作</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="Warn" lnClass="GGIO" lnType="GDNR_V1_ALM32_GGIO_NSR-3613A-N" inst="1" desc="自检信号1">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Alm1" desc="弹簧未储能告警">
							<DAI name="stVal" sAddr="B02.CNST_relayTHWCN.act"/>
							<DAI name="dU" sAddr="B02.CNST_relayTHWCN.act">
								<Val>弹簧未储能告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm2" desc="事故总信号">
							<DAI name="stVal" sAddr="B02.CNST_relaySGZ.act"/>
							<DAI name="dU" sAddr="B02.CNST_relaySGZ.act">
								<Val>事故总信号</Val>
							</DAI>
						</DOI>
						<DOI name="Alm3" desc="TWJ异常">
							<DAI name="stVal" sAddr="B02.CNST_relayTWYC.act"/>
							<DAI name="dU" sAddr="B02.CNST_relayTWYC.act">
								<Val>TWJ异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm4" desc="控制回路断线">
							<DAI name="stVal" sAddr="B02.CNST_relayKHDX.act"/>
							<DAI name="dU" sAddr="B02.CNST_relayKHDX.act">
								<Val>控制回路断线</Val>
							</DAI>
						</DOI>
						<DOI name="Alm5" desc="CT断线">
							<DAI name="stVal" sAddr="B02.CNST_relayCTDX.act"/>
							<DAI name="dU" sAddr="B02.CNST_relayCTDX.act">
								<Val>CT断线</Val>
							</DAI>
						</DOI>
						<DOI name="Alm6" desc="PT断线">
							<DAI name="stVal" sAddr="B02.CNST_relayPTDX.act"/>
							<DAI name="dU" sAddr="B02.CNST_relayPTDX.act">
								<Val>PT断线</Val>
							</DAI>
						</DOI>
						<DOI name="Alm7" desc="对时异常">
							<DAI name="stVal" sAddr="B02.CNST_gpsLost.act"/>
							<DAI name="dU" sAddr="B02.CNST_gpsLost.act">
								<Val>对时异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm8" desc="GOOSE总告警">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOSbj"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOSbj">
								<Val>GOOSE总告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm9" desc="开出传动">
							<DAI name="stVal" sAddr="B02.CNST_BO.testEnable"/>
							<DAI name="dU" sAddr="B02.CNST_BO.testEnable">
								<Val>开出传动</Val>
							</DAI>
						</DOI>
						<DOI name="Alm10" desc="检修告警">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.JxAlarm"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.JxAlarm">
								<Val>检修告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm11" desc="A网通信断链">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.phy_linkA_warn"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.phy_linkA_warn">
								<Val>A网通信断链</Val>
							</DAI>
						</DOI>
						<DOI name="Alm12" desc="B网通信断链">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.phy_linkB_warn"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.phy_linkB_warn">
								<Val>B网通信断链</Val>
							</DAI>
						</DOI>
						<DOI name="Alm13" desc="C网通信断链">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.phy_linkC_warn"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.phy_linkC_warn">
								<Val>C网通信断链</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="RBlk" lnClass="GGIO" lnType="GDNR_V1_IND8_GGIO_NSR-3613A-N" inst="1" desc="保护功能闭锁信号1">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="闭锁过流保护">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.OverCurrentFunBs"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.OverCurrentFunBs">
								<Val>闭锁过流保护</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="RSta" lnClass="GGIO" lnType="GDNR_V1_IND8_GGIO_NSR-3613A-N" inst="1" desc="保护功能状态信号1">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="过流Ⅰ段有效">
							<DAI name="stVal" sAddr="B02.CNST_relayOverCurrent1.FunOpen"/>
							<DAI name="dU" sAddr="B02.CNST_relayOverCurrent1.FunOpen">
								<Val>过流Ⅰ段有效</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="过流Ⅱ段有效">
							<DAI name="stVal" sAddr="B02.CNST_relayOverCurrent2.FunOpen"/>
							<DAI name="dU" sAddr="B02.CNST_relayOverCurrent2.FunOpen">
								<Val>过流Ⅱ段有效</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="BO" lnClass="GGIO" lnType="GDNR_V1_IND8_GGIO_NSR-3613A-N" inst="1" desc="开出信号1">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="跳闸位置">
							<DAI name="stVal" sAddr="B02.CNST_YX.bhkr[YX_BHKR_TW].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.bhkr[YX_BHKR_TW].value">
								<Val>跳闸位置</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="合闸位置">
							<DAI name="stVal" sAddr="B02.CNST_YX.bhkr[YX_BHKR_HW].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.bhkr[YX_BHKR_HW].value">
								<Val>合闸位置</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="合后位置">
							<DAI name="stVal" sAddr="B02.CNST_YX.bhkr[YX_BHKR_HH].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.bhkr[YX_BHKR_HH].value">
								<Val>合后位置</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="弹簧未储能开入">
							<DAI name="stVal" sAddr="B02.CNST_YX.bhkr[YX_BHKR_THWCN].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.bhkr[YX_BHKR_THWCN].value">
								<Val>弹簧未储能开入</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="检修状态硬压板">
							<DAI name="stVal" sAddr="B02.CNST_YX.bhkr[YX_BHKR_JX].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.bhkr[YX_BHKR_JX].value">
								<Val>检修状态硬压板</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="信号复归">
							<DAI name="stVal" sAddr="B02.CNST_YX.bhkr[YX_BHKR_XHFG].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.bhkr[YX_BHKR_XHFG].value">
								<Val>信号复归</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="GOOSE检修不一致">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.GooseJxStateErr"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.GooseJxStateErr">
								<Val>GOOSE检修不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="当前定值区号变化">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.GroupModify"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.GroupModify">
								<Val>当前定值区号变化</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="BO" lnClass="GGIO" lnType="GDNR_V1_IND8_GGIO_NSR-3613A-N" inst="2" desc="开出信号2">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="当前定值变化">
							<DAI name="stVal" sAddr="B01.calculate.protect_group_modified"/>
							<DAI name="dU" sAddr="B01.calculate.protect_group_modified">
								<Val>当前定值变化</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="永跳开入">
							<DAI name="stVal" sAddr="B02.CNST_YX.bhkr[YX_BHKR_YONGTZ].value"/>
							<DAI name="dU" sAddr="B02.CNST_YX.bhkr[YX_BHKR_YONGTZ].value">
								<Val>永跳开入</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="103远方信号复归">
							<DAI name="stVal" sAddr="B01.iec103.signal_rst"/>
							<DAI name="dU" sAddr="B01.iec103.signal_rst">
								<Val>103远方信号复归</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="保护动作">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[0]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[0]">
								<Val>保护动作</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="合闸动作">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[1]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[1]">
								<Val>合闸动作</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="跳闸开入1">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.TripProTz[0]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.TripProTz[0]">
								<Val>跳闸开入1</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="跳闸开入2">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.TripProTz[1]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.TripProTz[1]">
								<Val>跳闸开入2</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="跳闸开入3">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.TripProTz[2]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.TripProTz[2]">
								<Val>跳闸开入3</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="BO" lnClass="GGIO" lnType="GDNR_V1_IND8_GGIO_NSR-3613A-N" inst="3" desc="开出信号3">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="跳闸开入4">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.TripProTz[3]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.TripProTz[3]">
								<Val>跳闸开入4</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="跳闸开入5">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.TripProTz[4]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.TripProTz[4]">
								<Val>跳闸开入5</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="跳闸开入6">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.TripProTz[5]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.TripProTz[5]">
								<Val>跳闸开入6</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="跳闸开入7">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.TripProTz[6]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.TripProTz[6]">
								<Val>跳闸开入7</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="跳闸开入8">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.TripProTz[7]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.TripProTz[7]">
								<Val>跳闸开入8</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="合闸开入1">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.TripProHz[0]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.TripProHz[0]">
								<Val>合闸开入1</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="合闸开入2">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.TripProHz[1]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.TripProHz[1]">
								<Val>合闸开入2</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="GGIO" lnType="GDNR_V1_DPS8_GGIO_NSR-3613A-N" inst="1" desc="断路器位置">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO1" desc="断路器位置">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TwinsYx[0]"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TwinsYx[0]">
								<Val>断路器位置</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO2" desc="双点开入2">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="dU">
								<Val>双点开入2</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO3" desc="双点开入3">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="dU">
								<Val>双点开入3</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO4" desc="双点开入4">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="dU">
								<Val>双点开入4</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="G0" lnClass="GGIO" lnType="GDNR_V1_SPS32_GGIO_NSR-3613A-N" inst="1" desc="GOOSE接收跳闸开人">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="性能">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="跳闸开入1_GO">
							<DAI name="stVal" sAddr="B02.goose.soe_out_021"/>
							<DAI name="dU" sAddr="B02.goose.soe_out_021">
								<Val>跳闸开入1_GO</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="跳闸开入2_GO">
							<DAI name="stVal" sAddr="B02.goose.soe_out_022"/>
							<DAI name="dU" sAddr="B02.goose.soe_out_022">
								<Val>跳闸开入2_GO</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="跳闸开入3_GO">
							<DAI name="stVal" sAddr="B02.goose.soe_out_023"/>
							<DAI name="dU" sAddr="B02.goose.soe_out_023">
								<Val>跳闸开入3_GO</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="跳闸开入4_GO">
							<DAI name="stVal" sAddr="B02.goose.soe_out_024"/>
							<DAI name="dU" sAddr="B02.goose.soe_out_024">
								<Val>跳闸开入4_GO</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="跳闸开入5_GO">
							<DAI name="stVal" sAddr="B02.goose.soe_out_025"/>
							<DAI name="dU" sAddr="B02.goose.soe_out_025">
								<Val>跳闸开入5_GO</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="跳闸开入6_GO">
							<DAI name="stVal" sAddr="B02.goose.soe_out_026"/>
							<DAI name="dU" sAddr="B02.goose.soe_out_026">
								<Val>跳闸开入6_GO</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="跳闸开入7_GO">
							<DAI name="stVal" sAddr="B02.goose.soe_out_027"/>
							<DAI name="dU" sAddr="B02.goose.soe_out_027">
								<Val>跳闸开入7_GO</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="跳闸开入8_GO">
							<DAI name="stVal" sAddr="B02.goose.soe_out_028"/>
							<DAI name="dU" sAddr="B02.goose.soe_out_028">
								<Val>跳闸开入8_GO</Val>
							</DAI>
						</DOI>
						<DOI name="Ind9" desc="合闸开入1_GO">
							<DAI name="stVal" sAddr="B02.goose.soe_out_029"/>
							<DAI name="dU" sAddr="B02.goose.soe_out_029">
								<Val>合闸开入1_GO</Val>
							</DAI>
						</DOI>
						<DOI name="Ind10" desc="合闸开入2_GO">
							<DAI name="stVal" sAddr="B02.goose.soe_out_030"/>
							<DAI name="dU" sAddr="B02.goose.soe_out_030">
								<Val>合闸开入2_GO</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="RFLO" lnType="GDNR_V2_RFLO_NSR-3613A-N" inst="1" desc="故障信息">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="FltAPhA" desc="Ia">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.CNST_InstCal.FaultIA"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_InstCal.FaultIA">
								<Val>Ia</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="FltAPhB" desc="Ib">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.CNST_InstCal.FaultIB"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_InstCal.FaultIB">
								<Val>Ib</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="FltAPhC" desc="Ic">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.CNST_InstCal.FaultIC"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_InstCal.FaultIC">
								<Val>Ic</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="FltExtA0" desc="F">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.CNST_InstCal.FaultFR"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_InstCal.FaultFR">
								<Val>F</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice inst="MEAS" desc="测量">
					<LN0 lnClass="LLN0" lnType="GDNR_V2_LLN0_NSR-3613A-N" inst="" desc="测量逻辑节点0">
						<DataSet name="dsGOOSE" desc="GOOSE输出模拟量">
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PhV.phsA" daName="cVal.mag.f" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PhV.phsB" daName="cVal.mag.f" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PhV.phsC" daName="cVal.mag.f" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PPV.phsAB" daName="cVal.mag.f" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PPV.phsBC" daName="cVal.mag.f" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PPV.phsCA" daName="cVal.mag.f" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="A.phsA" daName="cVal.mag.f" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="A.phsB" daName="cVal.mag.f" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="A.phsC" daName="cVal.mag.f" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="TotW" daName="mag.f" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="TotVAr" daName="mag.f" fc="MX"/>
						</DataSet>
						<DataSet name="dsAin1" desc="模拟量">
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="TotPF" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PhV.phsA" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PhV.phsB" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PhV.phsC" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PPV.phsAB" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PPV.phsBC" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PPV.phsCA" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="A.phsA" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="A.phsB" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="A.phsC" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="TotW" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="TotVAr" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXN" lnInst="1" doName="Hz" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXN" lnInst="1" doName="Vol" fc="MX"/>
						</DataSet>
						<DataSet name="dsAin2" desc="同期量">
							<FCDA ldInst="MEAS" lnClass="MMXN" lnInst="2" doName="Vol" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXN" lnInst="3" doName="Vol" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXN" lnInst="2" doName="Hz" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="MMXN" lnInst="3" doName="Hz" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="RSYN" lnInst="1" doName="DifVClc" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="RSYN" lnInst="1" doName="DifHzClc" fc="MX"/>
							<FCDA ldInst="MEAS" lnClass="RSYN" lnInst="1" doName="DifAngClc" fc="MX"/>
						</DataSet>
						<ReportControl name="urcbAinA" datSet="dsAin1" intgPd="1800000" rptID="MEAS/LLN0$RP$urcbAinA" confRev="1" buffered="false" bufTime="0">
							<TrgOps dchg="true" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="urcbAinB" datSet="dsAin2" intgPd="1800000" rptID="MEAS/LLN0$RP$urcbAinB" confRev="1" buffered="false" bufTime="0">
							<TrgOps dchg="true" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="逻辑节点铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>逻辑节点铭牌</Val>
							</DAI>
							<DAI name="configRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2003</Val>
							</DAI>
						</DOI>
						<GSEControl name="gocb" datSet="dsGOOSE" confRev="1" type="GOOSE" appID="TEMPLATEMEAS/LLN0$GO$gocb"/>
					</LN0>
					<LN lnClass="LPHD" lnType="GDNR_V2_LPHD_NSR-3613A-N" inst="1" desc="装置物理信息">
						<DOI name="PhyNam" desc="物理装置铭牌">
							<DAI name="swRev" desc="测控版本" sAddr="B01.iec61850.bcu_ver_addr"/>
						</DOI>
						<DOI name="PhyHealth" desc="物理装置健康状况"/>
						<DOI name="Proxy" desc="是否为代理">
							<DAI name="dU">
								<Val>是否为代理</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXU" lnType="GDNR_V1_MMXU_NSR-3613A-N" inst="1" desc="遥测">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="性能">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="TotW" desc="P">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.nP1Ave"/>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>-520</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>520</Val>
									</DAI>
								</SDI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
								<DAI name="offset">
									<Val>0.0</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>W</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.MCU_Cal_Block.nP1Ave">
								<Val>P</Val>
							</DAI>
							<DAI name="db">
								<Val>1</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="TotVAr" desc="Q">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.nQ1Ave"/>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>-520</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>520</Val>
									</DAI>
								</SDI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
								<DAI name="offset">
									<Val>0.0</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>VAr</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.MCU_Cal_Block.nQ1Ave">
								<Val>Q</Val>
							</DAI>
							<DAI name="db">
								<Val>1</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="TotPF" desc="cos">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.nCosAve1"/>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>-1</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>1</Val>
									</DAI>
								</SDI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
								<DAI name="offset">
									<Val>0.0</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.MCU_Cal_Block.nCosAve1">
								<Val>cos</Val>
							</DAI>
							<DAI name="db">
								<Val>1</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="Hz" desc="F">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.FREQ_BLOCK01.wFrqAve"/>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>45</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>55</Val>
									</DAI>
								</SDI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>1.0</Val>
								</DAI>
								<DAI name="offset">
									<Val>0.0</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.FREQ_BLOCK01.wFrqAve">
								<Val>F</Val>
							</DAI>
							<DAI name="db">
								<Val>1</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="PPV" desc="线电压">
							<SDI name="phsAB" desc="Uab">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.MCU_Cal_Block.wUab1Ave"/>
									</SDI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="max">
										<DAI name="f">
											<Val>70</Val>
										</DAI>
									</SDI>
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>0.01</Val>
									</DAI>
									<DAI name="offset">
										<Val>0</Val>
									</DAI>
								</SDI>
								<DAI name="dU">
									<Val>Uab</Val>
								</DAI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="phsBC" desc="Ubc">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.MCU_Cal_Block.wUbc1Ave"/>
									</SDI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="max">
										<DAI name="f">
											<Val>70</Val>
										</DAI>
									</SDI>
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>0.01</Val>
									</DAI>
									<DAI name="offset">
										<Val>0</Val>
									</DAI>
								</SDI>
								<DAI name="dU">
									<Val>Ubc</Val>
								</DAI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="phsCA" desc="Uca">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.MCU_Cal_Block.wUca1Ave"/>
									</SDI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="max">
										<DAI name="f">
											<Val>70</Val>
										</DAI>
									</SDI>
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>0.01</Val>
									</DAI>
									<DAI name="offset">
										<Val>0</Val>
									</DAI>
								</SDI>
								<DAI name="dU">
									<Val>Uca</Val>
								</DAI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU">
								<Val>线电压</Val>
							</DAI>
						</DOI>
						<DOI name="PhV" desc="电压">
							<SDI name="phsA" desc="Ua">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.MCU_Cal_Block.fVal01"/>
									</SDI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="f">
											<Val>70</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>0.01</Val>
									</DAI>
									<DAI name="offset">
										<Val>0</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
								<DAI name="dU">
									<Val>Ua</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Ub">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.MCU_Cal_Block.fVal02"/>
									</SDI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="f">
											<Val>70</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>0.01</Val>
									</DAI>
									<DAI name="offset">
										<Val>0</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
								<DAI name="dU">
									<Val>Ub</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Uc">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.MCU_Cal_Block.fVal03"/>
									</SDI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="f">
											<Val>70</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>0.01</Val>
									</DAI>
									<DAI name="offset">
										<Val>0</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
								<DAI name="dU">
									<Val>Uc</Val>
								</DAI>
							</SDI>
							<DAI name="dU">
								<Val>电压</Val>
							</DAI>
						</DOI>
						<DOI name="A" desc="电流">
							<SDI name="phsA" desc="Ia">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.MCU_Cal_Block.fVal09"/>
									</SDI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="f">
											<Val>2000</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>0.01</Val>
									</DAI>
									<DAI name="offset">
										<Val>0.0</Val>
									</DAI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="dU">
									<Val>Ia</Val>
								</DAI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Ib">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.MCU_Cal_Block.fVal10"/>
									</SDI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="f">
											<Val>2000</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>0.01</Val>
									</DAI>
									<DAI name="offset">
										<Val>0.0</Val>
									</DAI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="dU">
									<Val>Ib</Val>
								</DAI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Ic">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.MCU_Cal_Block.fVal11"/>
									</SDI>
								</SDI>
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="f">
											<Val>0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="f">
											<Val>2000</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>0.01</Val>
									</DAI>
									<DAI name="offset">
										<Val>0.0</Val>
									</DAI>
								</SDI>
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="dU">
									<Val>Ic</Val>
								</DAI>
								<DAI name="db">
									<Val>1</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU">
								<Val>电流</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXN" lnType="GDNR_V1_MMXN_NSR-3613A-N" inst="1" desc="其他">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Vol" desc="Ux">
							<SDI name="mag" desc="Ux">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.fVal08"/>
							</SDI>
							<SDI name="units" desc="Ux">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="sVC" desc="Ux">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
								<DAI name="offset">
									<Val>0</Val>
								</DAI>
							</SDI>
							<SDI name="rangeC" desc="Ux">
								<SDI name="min">
									<DAI name="f">
										<Val>0</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>70</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db" desc="Ux">
								<Val>1</Val>
							</DAI>
							<DAI name="zeroDb" desc="Ux">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.MCU_Cal_Block.fVal08">
								<Val>Ux</Val>
							</DAI>
						</DOI>
						<DOI name="Hz" desc="Fux">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.FREQ_BLOCK02.wFrqAve"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>1.0</Val>
								</DAI>
								<DAI name="offset">
									<Val>0.0</Val>
								</DAI>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>45</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>55</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>1</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.FREQ_BLOCK02.wFrqAve">
								<Val>Fux</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXN" lnType="GDNR_V1_MMXN_NSR-3613A-N" inst="2" desc="系统侧电压频率">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Vol" desc="系统侧电压">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.fVal01_syn_sec"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
								<DAI name="offset">
									<Val>0</Val>
								</DAI>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>0</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>70</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>1</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.MCU_Cal_Block.fVal01_syn_sec">
								<Val>系统侧电压</Val>
							</DAI>
						</DOI>
						<DOI name="Hz" desc="系统侧频率">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.FREQ_BLOCK01.wFrqAve_syn"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>1.0</Val>
								</DAI>
								<DAI name="offset">
									<Val>0.0</Val>
								</DAI>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>45</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>55</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>1</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.FREQ_BLOCK01.wFrqAve_syn">
								<Val>系统侧频率</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXN" lnType="GDNR_V1_MMXN_NSR-3613A-N" inst="3" desc="抽取侧电压频率">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Vol" desc="抽取侧电压">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.fVal08_syn_sec"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
								<DAI name="offset">
									<Val>0</Val>
								</DAI>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>0</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>70</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>1</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.MCU_Cal_Block.fVal08_syn_sec">
								<Val>抽取侧电压</Val>
							</DAI>
						</DOI>
						<DOI name="Hz" desc="抽取侧频率">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.FREQ_BLOCK02.wFrqAve_syn"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>1.0</Val>
								</DAI>
								<DAI name="offset">
									<Val>0.0</Val>
								</DAI>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>45</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>55</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>1</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.FREQ_BLOCK02.wFrqAve_syn">
								<Val>抽取侧频率</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="RSYN" lnType="GDNR_V2_RSYN_NSR-3613A-N" inst="1" desc="同期量">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="性能">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="DifVClc" desc="两侧压差">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.ctrlPro00.dwDu"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>0</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>69.288</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>83</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>83</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.ctrlPro00.dwDu">
								<Val>两侧压差</Val>
							</DAI>
						</DOI>
						<DOI name="DifHzClc" desc="同期频差">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.ctrlPro00.dwDf"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>0</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>10</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>166</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>166</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.ctrlPro00.dwDf">
								<Val>同期频差</Val>
							</DAI>
						</DOI>
						<DOI name="DifAngClc" desc="同期角差">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.ctrlPro00.dwSita"/>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>0</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>360</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>166</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>166</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.ctrlPro00.dwSita">
								<Val>同期角差</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice inst="METR" desc="计量">
					<LN0 lnClass="LLN0" lnType="GDNR_V1_METR_LLN0_NSR-3613A-N" inst="" desc="计量逻辑节点0">
						<DataSet name="dsEnergy" desc="计量电能">
							<FCDA ldInst="METR" prefix="Lin" lnClass="MMTR" lnInst="1" doName="FwdWh" fc="ST"/>
							<FCDA ldInst="METR" prefix="Lin" lnClass="MMTR" lnInst="1" doName="BwdWh" fc="ST"/>
							<FCDA ldInst="METR" prefix="Lin" lnClass="MMTR" lnInst="1" doName="FwdVAh" fc="ST"/>
							<FCDA ldInst="METR" prefix="Lin" lnClass="MMTR" lnInst="1" doName="BwdVAh" fc="ST"/>
							<FCDA ldInst="METR" prefix="Lin" lnClass="MMTR" lnInst="1" doName="Q1VArh" fc="ST"/>
							<FCDA ldInst="METR" prefix="Lin" lnClass="MMTR" lnInst="1" doName="Q2Varh" fc="ST"/>
							<FCDA ldInst="METR" prefix="Lin" lnClass="MMTR" lnInst="1" doName="Q3Varh" fc="ST"/>
							<FCDA ldInst="METR" prefix="Lin" lnClass="MMTR" lnInst="1" doName="Q4Varh" fc="ST"/>
						</DataSet>
						<ReportControl name="urcbEnergy" datSet="dsEnergy" intgPd="1800000" rptID="METR/LLN0$RP$urcbEnergy" confRev="1" buffered="false" bufTime="0">
							<TrgOps dchg="true" period="true"/>
							<OptFields seqNum="true" timeStamp="false" dataSet="false" reasonCode="false" dataRef="false" entryID="false" configRef="false"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="逻辑节点铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>逻辑节点铭牌</Val>
							</DAI>
							<DAI name="configRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2003</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="LPHD" lnType="GDNR_V1_LPHD_NSR-3613A-N" inst="1" desc="装置物理信息">
						<DOI name="PhyNam" desc="物理装置铭牌"/>
						<DOI name="PhyHealth" desc="物理装置健康状况"/>
						<DOI name="Proxy" desc="是否为代理">
							<DAI name="dU">
								<Val>是否为代理</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="Lin" lnClass="MMTR" lnType="GDNR_V1_METR_MMTR_NSR-3613A-N" inst="1" desc="需量计量">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="FwdWh" desc="正向有功">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.EnergyCalc.rtValueComm_zxyg_total">
									<Val>Wh</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="actVal" sAddr="B02.EnergyCalc.rtValueComm_zxyg_total"/>
							<DAI name="pulsQty" sAddr="B02.EnergyCalc.rtValueComm_zxyg_total">
								<Val>0.001</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.EnergyCalc.rtValueComm_zxyg_total">
								<Val>正向有功</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="BwdWh" desc="反向有功">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.EnergyCalc.rtValueComm_fxyg_total">
									<Val>Wh</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="actVal" sAddr="B02.EnergyCalc.rtValueComm_fxyg_total"/>
							<DAI name="pulsQty" sAddr="B02.EnergyCalc.rtValueComm_fxyg_total">
								<Val>0.001</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.EnergyCalc.rtValueComm_fxyg_total">
								<Val>反向有功</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="FwdVAh" desc="正向无功">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.EnergyCalc.rtValueComm_zxwg_total">
									<Val>VArh</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="actVal" sAddr="B02.EnergyCalc.rtValueComm_zxwg_total"/>
							<DAI name="pulsQty" sAddr="B02.EnergyCalc.rtValueComm_zxwg_total">
								<Val>0.001</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.EnergyCalc.rtValueComm_zxwg_total">
								<Val>正向无功</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="BwdVAh" desc="反向无功">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.EnergyCalc.rtValueComm_fxwg_total">
									<Val>VArh</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="actVal" sAddr="B02.EnergyCalc.rtValueComm_fxwg_total"/>
							<DAI name="pulsQty" sAddr="B02.EnergyCalc.rtValueComm_fxwg_total">
								<Val>0.001</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.EnergyCalc.rtValueComm_fxwg_total">
								<Val>反向无功</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="Q1VArh" desc="Ⅰ象限无功">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.EnergyCalc.rtValueComm_wgI_total">
									<Val>VArh</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="actVal" sAddr="B02.EnergyCalc.rtValueComm_wgI_total"/>
							<DAI name="pulsQty" sAddr="B02.EnergyCalc.rtValueComm_wgI_total">
								<Val>0.001</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.EnergyCalc.rtValueComm_wgI_total">
								<Val>Ⅰ象限无功</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="Q2Varh" desc="Ⅱ象限无功">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.EnergyCalc.rtValueComm_wgII_total">
									<Val>VArh</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="actVal" sAddr="B02.EnergyCalc.rtValueComm_wgII_total"/>
							<DAI name="pulsQty" sAddr="B02.EnergyCalc.rtValueComm_wgII_total">
								<Val>0.001</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.EnergyCalc.rtValueComm_wgII_total">
								<Val>Ⅱ象限无功</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="Q3Varh" desc="Ⅲ象限无功">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.EnergyCalc.rtValueComm_wgIII_total">
									<Val>VArh</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="actVal" sAddr="B02.EnergyCalc.rtValueComm_wgIII_total"/>
							<DAI name="pulsQty" sAddr="B02.EnergyCalc.rtValueComm_wgIII_total">
								<Val>0.001</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.EnergyCalc.rtValueComm_wgIII_total">
								<Val>Ⅲ象限无功</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="Q4Varh" desc="Ⅳ象限无功">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.EnergyCalc.rtValueComm_wgIV_total">
									<Val>VArh</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="actVal" sAddr="B02.EnergyCalc.rtValueComm_wgIV_total"/>
							<DAI name="pulsQty" sAddr="B02.EnergyCalc.rtValueComm_wgIV_total">
								<Val>0.001</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.EnergyCalc.rtValueComm_wgIV_total">
								<Val>Ⅳ象限无功</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice inst="LD0" desc="装置信息">
					<LN0 lnClass="LLN0" lnType="GDNR_V3_LLN0_NSR-3613A-N" inst="" desc="装置信息逻辑节点0">
						<DataSet name="dsAin" desc="模拟量">
							<FCDA ldInst="LD0" lnClass="STMP" lnInst="1" doName="Tmp" fc="MX"/>
							<FCDA ldInst="LD0" lnClass="SPVT" lnInst="1" doName="Vol" fc="MX"/>
							<FCDA ldInst="LD0" prefix="StaTx" lnClass="SCLI" lnInst="1" doName="LigIntes" fc="MX"/>
							<FCDA ldInst="LD0" prefix="StaRx" lnClass="SCLI" lnInst="3" doName="LigIntes" fc="MX"/>
							<FCDA ldInst="LD0" prefix="StaTx" lnClass="SCLI" lnInst="2" doName="LigIntes" fc="MX"/>
							<FCDA ldInst="LD0" prefix="StaRx" lnClass="SCLI" lnInst="4" doName="LigIntes" fc="MX"/>
						</DataSet>
						<DataSet name="dsComParameter" desc="通信参数数据集">
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="1" doName="NetAIp" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="1" doName="NetBIp" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="1" doName="NetCIp" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="1" doName="ClientIp1" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="1" doName="ClientIp2" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="1" doName="ClientIp3" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="1" doName="ClientIp4" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="1" doName="ClientIp5" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="1" doName="ClientIp6" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="1" doName="ClientIp7" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="1" doName="ClientIp8" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="1" doName="ClientIp9" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="1" doName="ClientIp10" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="1" doName="ClientIp11" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="1" doName="ClientIp12" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="1" doName="ClientIp13" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="1" doName="ClientIp14" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="1" doName="ClientIp15" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="1" doName="ClientIp16" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="2" doName="ClientIp1" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="2" doName="ClientIp2" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="2" doName="ClientIp3" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="2" doName="ClientIp4" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="2" doName="ClientIp5" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="2" doName="ClientIp6" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="2" doName="ClientIp7" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="2" doName="ClientIp8" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="2" doName="ClientIp9" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="2" doName="ClientIp10" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="2" doName="ClientIp11" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="2" doName="ClientIp12" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="2" doName="ClientIp13" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="2" doName="ClientIp14" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="2" doName="ClientIp15" fc="SP"/>
							<FCDA ldInst="LD0" lnClass="GGIO" lnInst="2" doName="ClientIp16" fc="SP"/>
							<FCDA ldInst="LD0" prefix="Comm" lnClass="GGIO" lnInst="1" doName="VrifTmMod" fc="SP"/>
						</DataSet>
						<DataSet name="dsFileState" desc="文件管理">
							<FCDA ldInst="LD0" lnClass="LLN0" doName="SetInfProc" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="SetProcSuc" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="SetProcFal" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="SetInfMade" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="SetMadeSuc" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="SetMadeFal" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="DevProcSuc" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="DevProcFal" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="StaInfMade" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="StaMadeSuc" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="StaMadeFal" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="AlmInfMade" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="AlmMadeSuc" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="AlmMadeFal" fc="ST"/>
						</DataSet>
						<DataSet name="dsAlarm" desc="故障信号数据集">
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm15" fc="ST"/>
						</DataSet>
						<DataSet name="dsWarning" desc="告警信号数据集">
							<FCDA ldInst="LD0" prefix="DevAlm" lnClass="LTSM" lnInst="1" doName="HostTPortAlarm" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DevAlm" lnClass="LTSM" lnInst="1" doName="HostTSrvAlarm" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DevAlm" lnClass="LTSM" lnInst="1" doName="HostContAlarm" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm8" fc="ST"/>
						</DataSet>
						<DataSet name="dsCommState" desc="通信工况信号数据集">
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm17" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm18" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm19" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm20" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm21" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm22" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm23" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm24" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm25" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm26" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm27" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm28" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm17" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm18" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm29" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm30" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm31" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm19" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm20" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm21" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm22" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm23" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm24" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm25" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm26" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm27" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm28" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm29" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm30" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm31" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm32" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm17" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm18" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm19" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm20" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm21" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm22" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm23" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm24" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm25" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm26" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm27" fc="ST"/>
						</DataSet>
						<DataSet name="dsDeviceState" desc="装置运行状态数据集">
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind7" fc="ST"/>
						</DataSet>
						<DataSet name="dsLog" desc="日志记录数据集">
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm17" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm18" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm19" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm20" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm21" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm22" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm23" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm24" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm25" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm26" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm27" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm28" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm17" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm18" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm29" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm30" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm31" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm19" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm20" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm21" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm22" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm23" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm24" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm25" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm26" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm27" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm28" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm29" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm30" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm31" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm32" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm17" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm18" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm19" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm20" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm21" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm22" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm23" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm24" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm25" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm26" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="3" doName="Alm27" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DevAlm" lnClass="LTSM" lnInst="1" doName="HostTPortAlarm" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DevAlm" lnClass="LTSM" lnInst="1" doName="HostTSrvAlarm" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DevAlm" lnClass="LTSM" lnInst="1" doName="HostContAlarm" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="SetInfProc" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="SetProcSuc" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="SetProcFal" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="SetInfMade" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="SetMadeSuc" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="SetMadeFal" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="DevProcSuc" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="DevProcFal" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="StaInfMade" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="StaMadeSuc" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="StaMadeFal" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="AlmInfMade" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="AlmMadeSuc" fc="ST"/>
							<FCDA ldInst="LD0" lnClass="LLN0" doName="AlmMadeFal" fc="ST"/>
						</DataSet>
						<DataSet name="dsSetGrpNum" desc="定值区号数据集">
							<FCDA ldInst="LD0" lnClass="LLN0" doName="CurStGrp" fc="MX"/>
						</DataSet>
						<DataSet name="dsParameter1" desc="同期参数">
							<FCDA ldInst="LD0" prefix="TQpara" lnClass="RSYN" lnInst="1" doName="SynVolMod" fc="SP"/>
							<FCDA ldInst="LD0" prefix="TQpara" lnClass="RSYN" lnInst="1" doName="PhaVLinRtgSnd" fc="SP"/>
							<FCDA ldInst="LD0" prefix="TQpara" lnClass="RSYN" lnInst="1" doName="PhaVBusRtgSnd" fc="SP"/>
							<FCDA ldInst="LD0" prefix="TQpara" lnClass="RSYN" lnInst="1" doName="ChkLivPct" fc="SP"/>
							<FCDA ldInst="LD0" prefix="TQpara" lnClass="RSYN" lnInst="1" doName="ChkDeaPct" fc="SP"/>
							<FCDA ldInst="LD0" prefix="TQpara" lnClass="RSYN" lnInst="1" doName="RteHz" fc="SP"/>
							<FCDA ldInst="LD0" prefix="TQpara" lnClass="RSYN" lnInst="1" doName="DifV" fc="SP"/>
							<FCDA ldInst="LD0" prefix="TQpara" lnClass="RSYN" lnInst="1" doName="DifHz" fc="SP"/>
							<FCDA ldInst="LD0" prefix="TQpara" lnClass="RSYN" lnInst="1" doName="DifAng" fc="SP"/>
							<FCDA ldInst="LD0" prefix="TQpara" lnClass="RSYN" lnInst="1" doName="BkrTmms" fc="SP"/>
							<FCDA ldInst="LD0" prefix="TQpara" lnClass="RSYN" lnInst="1" doName="SynCatmms" fc="SP"/>
							<FCDA ldInst="LD0" prefix="TQpara" lnClass="RSYN" lnInst="1" doName="PTFBlk" fc="SP"/>
						</DataSet>
						<DataSet name="dsParameter2" desc="遥信参数">
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms1" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms2" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms3" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms4" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms5" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms6" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms7" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms8" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms9" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms10" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms11" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms12" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms13" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms14" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms15" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms16" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms17" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms18" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms19" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms20" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms21" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YXpara" lnClass="GGIO" lnInst="1" doName="YXHoldTmms22" fc="SP"/>
						</DataSet>
						<DataSet name="dsParameter5" desc="遥控参数">
							<FCDA ldInst="LD0" prefix="YKpara" lnClass="GGIO" lnInst="1" doName="CtrlOPTmms1" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YKpara" lnClass="GGIO" lnInst="1" doName="CtrlCPTmms1" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YKpara" lnClass="GGIO" lnInst="1" doName="CtrlOPTmms2" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YKpara" lnClass="GGIO" lnInst="1" doName="CtrlCPTmms2" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YKpara" lnClass="GGIO" lnInst="1" doName="CtrlOPTmms3" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YKpara" lnClass="GGIO" lnInst="1" doName="CtrlCPTmms3" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YKpara" lnClass="GGIO" lnInst="1" doName="CtrlOPTmms4" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YKpara" lnClass="GGIO" lnInst="1" doName="CtrlCPTmms4" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YKpara" lnClass="GGIO" lnInst="1" doName="CtrlOPTmms5" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YKpara" lnClass="GGIO" lnInst="1" doName="CtrlCPTmms5" fc="SP"/>
						</DataSet>
						<DataSet name="dsParameter8" desc="遥测参数">
							<FCDA ldInst="LD0" prefix="YCpara" lnClass="GGIO" lnInst="1" doName="BusVRtgPri" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YCpara" lnClass="GGIO" lnInst="1" doName="BusVRtgSnd" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YCpara" lnClass="GGIO" lnInst="1" doName="BusARtgPri" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YCpara" lnClass="GGIO" lnInst="1" doName="BusARtgSnd" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YCpara" lnClass="GGIO" lnInst="1" doName="LinVRtgPri" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YCpara" lnClass="GGIO" lnInst="1" doName="LinVRtgSnd" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YCpara" lnClass="GGIO" lnInst="1" doName="Teldb" fc="SP"/>
							<FCDA ldInst="LD0" prefix="YCpara" lnClass="GGIO" lnInst="1" doName="Frdb" fc="SP"/>
						</DataSet>
						<ReportControl name="urcbAin" datSet="dsAin" intgPd="0" rptID="LD0/LLN0$RP$urcbAin" confRev="1" buffered="false" bufTime="0">
							<TrgOps dchg="true" qchg="true" dupd="false" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="false" configRef="false"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="brcbSetGrpNum" datSet="dsSetGrpNum" intgPd="0" rptID="LD0/LLN0$BR$brcbSetGrpNum" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="true" dupd="false" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="false"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="brcbAlarm" datSet="dsAlarm" intgPd="0" rptID="LD0/LLN0$BR$brcbAlarm" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="true" dupd="false" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="false"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="brcbCommState" datSet="dsCommState" intgPd="0" rptID="LD0/LLN0$BR$brcbCommState" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="true" dupd="false" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="false"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="brcbDeviceState" datSet="dsDeviceState" intgPd="0" rptID="LD0/LLN0$BR$brcbDeviceState" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="true" dupd="false" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="false"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="brcbFileState" datSet="dsFileState" intgPd="0" rptID="LD0/LLN0$BR$brcbFileState" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="true" dupd="false" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="false"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="brcbWarning" datSet="dsWarning" intgPd="0" rptID="LD0/LLN0$BR$brcbWarning" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="true" dupd="false" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="false"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<LogControl name="lcbLD0" desc="LD0日志控制块" datSet="dsLog" intgPd="360000" logName="LD0" logEna="false">
							<TrgOps dchg="true" qchg="false" dupd="false" period="false"/>
						</LogControl>
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="逻辑节点铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>逻辑节点铭牌</Val>
							</DAI>
							<DAI name="configRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2003</Val>
							</DAI>
						</DOI>
						<DOI name="SetInfProc" desc="解析定值文件">
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B01.ext.trig_parse_set_file"/>
							</SDI>
							<DAI name="stVal" sAddr="B01.ext.trig_parse_set_file_stat"/>
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
							<DAI name="dU" sAddr="B01.ext.trig_parse_set_file_stat">
								<Val>解析定值文件</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="SetInfMade" desc="生成定值文件">
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B01.ext.trig_set_file"/>
							</SDI>
							<DAI name="stVal" sAddr="B01.ext.trig_set_file_stat"/>
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
							<DAI name="dU" sAddr="B01.ext.trig_set_file_stat">
								<Val>生成定值文件</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="StaInfMade" desc="生成状态文件">
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B01.ext.trig_sta_file"/>
							</SDI>
							<DAI name="stVal" sAddr="B01.ext.trig_sta_file_stat"/>
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
							<DAI name="dU" sAddr="B01.ext.trig_sta_file_stat">
								<Val>生成状态文件</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="AlmInfMade" desc="生成动态告警文件">
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B01.ext.make_alm_dynamic"/>
							</SDI>
							<DAI name="stVal" sAddr="B01.ext.make_alm_dynamic_state"/>
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
							<DAI name="dU" sAddr="B01.ext.make_alm_dynamic_state">
								<Val>生成动态告警文件</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="SetProcSuc" desc="定值文件解析成功">
							<DAI name="stVal" sAddr="B01.ext.wri_set_ok"/>
							<DAI name="dU" sAddr="B01.ext.wri_set_ok">
								<Val>定值文件解析成功</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="SetProcFal" desc="定值文件解析失败">
							<DAI name="stVal" sAddr="B01.ext.wri_set_fail"/>
							<DAI name="dU" sAddr="B01.ext.wri_set_fail">
								<Val>定值文件解析失败</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="SetMadeSuc" desc="定值文件生成成功">
							<DAI name="stVal" sAddr="B01.ext.gen_set_file_ok"/>
							<DAI name="dU" sAddr="B01.ext.gen_set_file_ok">
								<Val>定值文件生成成功</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="SetMadeFal" desc="定值文件生成失败">
							<DAI name="stVal" sAddr="B01.ext.gen_set_file_fail"/>
							<DAI name="dU" sAddr="B01.ext.gen_set_file_fail">
								<Val>定值文件生成失败</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="DevProcSuc" desc="档案文件更新成功">
							<DAI name="stVal" sAddr="B01.ext.update_dev_info_ok"/>
							<DAI name="dU" sAddr="B01.ext.update_dev_info_ok">
								<Val>档案文件更新成功</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="DevProcFal" desc="档案文件更新失败">
							<DAI name="stVal" sAddr="B01.ext.update_dev_info_fail"/>
							<DAI name="dU" sAddr="B01.ext.update_dev_info_fail">
								<Val>档案文件更新失败</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="StaMadeSuc" desc="状态文件生成成功">
							<DAI name="stVal" sAddr="B01.ext.gen_sta_file_ok"/>
							<DAI name="dU" sAddr="B01.ext.gen_sta_file_ok">
								<Val>状态文件生成成功</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="StaMadeFal" desc="状态文件生成失败">
							<DAI name="stVal" sAddr="B01.ext.gen_sta_file_fail"/>
							<DAI name="dU" sAddr="B01.ext.gen_sta_file_fail">
								<Val>状态文件生成失败</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="AlmMadeSuc" desc="动态告警文件生成成功">
							<DAI name="stVal" sAddr="B01.ext.make_alm_dynamic_ok"/>
							<DAI name="dU" sAddr="B01.ext.make_alm_dynamic_ok">
								<Val>动态告警文件生成成功</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="AlmMadeFal" desc="动态告警文件生成失败">
							<DAI name="stVal" sAddr="B01.ext.make_alm_dynamic_fail"/>
							<DAI name="dU" sAddr="B01.ext.make_alm_dynamic_fail">
								<Val>动态告警文件生成失败</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="CurStGrp" desc="定值区号">
							<SDI name="mag">
								<DAI name="i" sAddr="B02.CNST_GeneralSetting.current_setting_group"/>
							</SDI>
							<SDI name="rangeC">
								<SDI name="max">
									<DAI name="f">
										<Val>10</Val>
									</DAI>
								</SDI>
								<SDI name="min">
									<DAI name="f">
										<Val>1</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.current_setting_group">
								<Val>定值区号</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="LPHD" lnType="GDNR_V3_LPHD_NSR-3613A-N" inst="1" desc="装置物理信息">
						<DOI name="PhyNam" desc="物理装置铭牌"/>
						<DOI name="PhyHealth" desc="物理装置健康状况"/>
						<DOI name="Proxy" desc="是否为代理">
							<DAI name="dU">
								<Val>是否为代理</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="DevAlm" lnClass="LTSM" lnType="GDNR_V1_LTSM_NSR-3613A-N" inst="1" desc="装置对时自检状态">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="HostTPortAlarm" desc="对时信号状态">
							<DAI name="stVal" sAddr="B02.tMon.timeSigSt"/>
							<DAI name="dU" sAddr="B02.tMon.timeSigSt">
								<Val>对时信号状态</Val>
							</DAI>
						</DOI>
						<DOI name="HostTSrvAlarm" desc="对时服务状态">
							<DAI name="stVal" sAddr="B02.tMon.timeServiceSt"/>
							<DAI name="dU" sAddr="B02.tMon.timeServiceSt">
								<Val>对时服务状态</Val>
							</DAI>
						</DOI>
						<DOI name="HostContAlarm" desc="时间跳变侦测状态">
							<DAI name="stVal" sAddr="B02.tMon.timeSlipSt"/>
							<DAI name="dU" sAddr="B02.tMon.timeSlipSt">
								<Val>时间跳变侦测状态</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="STMP" lnType="GDNR_V1_STMP_NSR-3613A-N" inst="1" desc="二次设备温度监测">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="Tmp" desc="装置温度">
							<SDI name="mag">
								<DAI name="f" sAddr="B01.master.fl_out1"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>°C</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>1.0</Val>
								</DAI>
								<DAI name="offset">
									<Val>0.0</Val>
								</DAI>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>0</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>100</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>100</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>100</Val>
							</DAI>
							<DAI name="dU" sAddr="B01.master.fl_out1">
								<Val>装置温度</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="SPVT" lnType="GDNR_V1_SPVT_NSR-3613A-N" inst="1" desc="二次设备电源电压监测">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="Vol" desc="装置电压5V">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.master.fl_out3"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>1.0</Val>
								</DAI>
								<DAI name="offset">
									<Val>0.0</Val>
								</DAI>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>4</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>6</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>100</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>100</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.master.fl_out3">
								<Val>装置电压5V</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="Alm" lnClass="GGIO" lnType="GDNR_V1_EVE_GGIO_NSR-3613A-N" inst="1" desc="告警信号1">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Alm1" desc="模拟量采集错">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.AdAlarm"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.AdAlarm">
								<Val>模拟量采集错</Val>
							</DAI>
						</DOI>
						<DOI name="Alm2" desc="CPU插件异常">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.CPUAlarm"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.CPUAlarm">
								<Val>CPU插件异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm3" desc="开出异常">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.CKAlarm"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.CKAlarm">
								<Val>开出异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm4" desc="CID文件错误">
							<DAI name="stVal" sAddr="B01.iec61850.setting_model_err"/>
							<DAI name="dU" sAddr="B01.iec61850.setting_model_err">
								<Val>CID文件错误</Val>
							</DAI>
						</DOI>
						<DOI name="Alm5" desc="CCD文件CRC校验错误">
							<DAI name="stVal" sAddr="B01.ccd_crc_check_err"/>
							<DAI name="dU" sAddr="B01.ccd_crc_check_err">
								<Val>CCD文件CRC校验错误</Val>
							</DAI>
						</DOI>
						<DOI name="Alm6" desc="CCD文件参数缺失">
							<DAI name="stVal" sAddr="B01.ccd_parameter_missing"/>
							<DAI name="dU" sAddr="B01.ccd_parameter_missing">
								<Val>CCD文件参数缺失</Val>
							</DAI>
						</DOI>
						<DOI name="Alm7" desc="CCD文件参数错误">
							<DAI name="stVal" sAddr="B01.ccd_parameter_error"/>
							<DAI name="dU" sAddr="B01.ccd_parameter_error">
								<Val>CCD文件参数错误</Val>
							</DAI>
						</DOI>
						<DOI name="Alm8" desc="CCD文件错误">
							<DAI name="stVal" sAddr="B01.ccd_parse_err"/>
							<DAI name="dU" sAddr="B01.ccd_parse_err">
								<Val>CCD文件错误</Val>
							</DAI>
						</DOI>
						<DOI name="Alm9" desc="Ua双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_adCheck[0].act"/>
							<DAI name="dU" sAddr="B02.CNST_adCheck[0].act">
								<Val>Ua双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm10" desc="Ub双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_adCheck[1].act"/>
							<DAI name="dU" sAddr="B02.CNST_adCheck[1].act">
								<Val>Ub双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm11" desc="Uc双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_adCheck[2].act"/>
							<DAI name="dU" sAddr="B02.CNST_adCheck[2].act">
								<Val>Uc双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm12" desc="Ux双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_adCheck[3].act"/>
							<DAI name="dU" sAddr="B02.CNST_adCheck[3].act">
								<Val>Ux双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm13" desc="Ia双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_adCheck[4].act"/>
							<DAI name="dU" sAddr="B02.CNST_adCheck[4].act">
								<Val>Ia双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm14" desc="Ib双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_adCheck[5].act"/>
							<DAI name="dU" sAddr="B02.CNST_adCheck[5].act">
								<Val>Ib双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm15" desc="Ic双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_adCheck[6].act"/>
							<DAI name="dU" sAddr="B02.CNST_adCheck[6].act">
								<Val>Ic双AD不一致</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOAlm" lnClass="GGIO" lnType="GDNR_V1_EVE_GGIO_NSR-3613A-N" inst="1" desc="GOOSE告警信号1">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Alm1" desc="GOOSE链路中断_1A">
							<DAI name="stVal" sAddr="B02.Goose.gocb00_a_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb00_a_link_down">
								<Val>GOOSE链路中断_1A</Val>
							</DAI>
						</DOI>
						<DOI name="Alm2" desc="GOOSE链路中断_1B">
							<DAI name="stVal" sAddr="B02.Goose.gocb00_b_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb00_b_link_down">
								<Val>GOOSE链路中断_1B</Val>
							</DAI>
						</DOI>
						<DOI name="Alm3" desc="GOOSE配置错_1">
							<DAI name="stVal" sAddr="B02.Goose.gocb00_cfg_err"/>
							<DAI name="dU" sAddr="B02.Goose.gocb00_cfg_err">
								<Val>GOOSE配置错_1</Val>
							</DAI>
						</DOI>
						<DOI name="Alm4" desc="GOOSE链路中断_2A">
							<DAI name="stVal" sAddr="B02.Goose.gocb01_a_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb01_a_link_down">
								<Val>GOOSE链路中断_2A</Val>
							</DAI>
						</DOI>
						<DOI name="Alm5" desc="GOOSE链路中断_2B">
							<DAI name="stVal" sAddr="B02.Goose.gocb01_b_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb01_b_link_down">
								<Val>GOOSE链路中断_2B</Val>
							</DAI>
						</DOI>
						<DOI name="Alm6" desc="GOOSE配置错_2">
							<DAI name="stVal" sAddr="B02.Goose.gocb01_cfg_err"/>
							<DAI name="dU" sAddr="B02.Goose.gocb01_cfg_err">
								<Val>GOOSE配置错_2</Val>
							</DAI>
						</DOI>
						<DOI name="Alm7" desc="GOOSE链路中断_3A">
							<DAI name="stVal" sAddr="B02.Goose.gocb02_a_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb02_a_link_down">
								<Val>GOOSE链路中断_3A</Val>
							</DAI>
						</DOI>
						<DOI name="Alm8" desc="GOOSE链路中断_3B">
							<DAI name="stVal" sAddr="B02.Goose.gocb02_b_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb02_b_link_down">
								<Val>GOOSE链路中断_3B</Val>
							</DAI>
						</DOI>
						<DOI name="Alm9" desc="GOOSE配置错_3">
							<DAI name="stVal" sAddr="B02.Goose.gocb02_cfg_err"/>
							<DAI name="dU" sAddr="B02.Goose.gocb02_cfg_err">
								<Val>GOOSE配置错_3</Val>
							</DAI>
						</DOI>
						<DOI name="Alm10" desc="GOOSE链路中断_4A">
							<DAI name="stVal" sAddr="B02.Goose.gocb03_a_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb03_a_link_down">
								<Val>GOOSE链路中断_4A</Val>
							</DAI>
						</DOI>
						<DOI name="Alm11" desc="GOOSE链路中断_4B">
							<DAI name="stVal" sAddr="B02.Goose.gocb03_b_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb03_b_link_down">
								<Val>GOOSE链路中断_4B</Val>
							</DAI>
						</DOI>
						<DOI name="Alm12" desc="GOOSE配置错_4">
							<DAI name="stVal" sAddr="B02.Goose.gocb03_cfg_err"/>
							<DAI name="dU" sAddr="B02.Goose.gocb03_cfg_err">
								<Val>GOOSE配置错_4</Val>
							</DAI>
						</DOI>
						<DOI name="Alm13" desc="GOOSE链路中断_5A">
							<DAI name="stVal" sAddr="B02.Goose.gocb04_a_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb04_a_link_down">
								<Val>GOOSE链路中断_5A</Val>
							</DAI>
						</DOI>
						<DOI name="Alm14" desc="GOOSE链路中断_5B">
							<DAI name="stVal" sAddr="B02.Goose.gocb04_b_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb04_b_link_down">
								<Val>GOOSE链路中断_5B</Val>
							</DAI>
						</DOI>
						<DOI name="Alm15" desc="GOOSE配置错_5">
							<DAI name="stVal" sAddr="B02.Goose.gocb04_cfg_err"/>
							<DAI name="dU" sAddr="B02.Goose.gocb04_cfg_err">
								<Val>GOOSE配置错_5</Val>
							</DAI>
						</DOI>
						<DOI name="Alm16" desc="GOOSE链路中断_6A">
							<DAI name="stVal" sAddr="B02.Goose.gocb05_a_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb05_a_link_down">
								<Val>GOOSE链路中断_6A</Val>
							</DAI>
						</DOI>
						<DOI name="Alm17" desc="GOOSE链路中断_6B">
							<DAI name="stVal" sAddr="B02.Goose.gocb05_b_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb05_b_link_down">
								<Val>GOOSE链路中断_6B</Val>
							</DAI>
						</DOI>
						<DOI name="Alm18" desc="GOOSE配置错_6">
							<DAI name="stVal" sAddr="B02.Goose.gocb05_cfg_err"/>
							<DAI name="dU" sAddr="B02.Goose.gocb05_cfg_err">
								<Val>GOOSE配置错_6</Val>
							</DAI>
						</DOI>
						<DOI name="Alm19" desc="GOOSE链路中断_7A">
							<DAI name="stVal" sAddr="B02.Goose.gocb06_a_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb06_a_link_down">
								<Val>GOOSE链路中断_7A</Val>
							</DAI>
						</DOI>
						<DOI name="Alm20" desc="GOOSE链路中断_7B">
							<DAI name="stVal" sAddr="B02.Goose.gocb06_b_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb06_b_link_down">
								<Val>GOOSE链路中断_7B</Val>
							</DAI>
						</DOI>
						<DOI name="Alm21" desc="GOOSE配置错_7">
							<DAI name="stVal" sAddr="B02.Goose.gocb06_cfg_err"/>
							<DAI name="dU" sAddr="B02.Goose.gocb06_cfg_err">
								<Val>GOOSE配置错_7</Val>
							</DAI>
						</DOI>
						<DOI name="Alm22" desc="GOOSE链路中断_8A">
							<DAI name="stVal" sAddr="B02.Goose.gocb07_a_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb07_a_link_down">
								<Val>GOOSE链路中断_8A</Val>
							</DAI>
						</DOI>
						<DOI name="Alm23" desc="GOOSE链路中断_8B">
							<DAI name="stVal" sAddr="B02.Goose.gocb07_b_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb07_b_link_down">
								<Val>GOOSE链路中断_8B</Val>
							</DAI>
						</DOI>
						<DOI name="Alm24" desc="GOOSE配置错_8">
							<DAI name="stVal" sAddr="B02.Goose.gocb07_cfg_err"/>
							<DAI name="dU" sAddr="B02.Goose.gocb07_cfg_err">
								<Val>GOOSE配置错_8</Val>
							</DAI>
						</DOI>
						<DOI name="Alm25" desc="GOOSE链路中断_9A">
							<DAI name="stVal" sAddr="B02.Goose.gocb08_a_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb08_a_link_down">
								<Val>GOOSE链路中断_9A</Val>
							</DAI>
						</DOI>
						<DOI name="Alm26" desc="GOOSE链路中断_9B">
							<DAI name="stVal" sAddr="B02.Goose.gocb08_b_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb08_b_link_down">
								<Val>GOOSE链路中断_9B</Val>
							</DAI>
						</DOI>
						<DOI name="Alm27" desc="GOOSE配置错_9">
							<DAI name="stVal" sAddr="B02.Goose.gocb08_cfg_err"/>
							<DAI name="dU" sAddr="B02.Goose.gocb08_cfg_err">
								<Val>GOOSE配置错_9</Val>
							</DAI>
						</DOI>
						<DOI name="Alm28" desc="GOOSE链路中断_10A">
							<DAI name="stVal" sAddr="B02.Goose.gocb09_a_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb09_a_link_down">
								<Val>GOOSE链路中断_10A</Val>
							</DAI>
						</DOI>
						<DOI name="Alm29" desc="GOOSE链路中断_10B">
							<DAI name="stVal" sAddr="B02.Goose.gocb09_b_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb09_b_link_down">
								<Val>GOOSE链路中断_10B</Val>
							</DAI>
						</DOI>
						<DOI name="Alm30" desc="GOOSE配置错_10">
							<DAI name="stVal" sAddr="B02.Goose.gocb09_cfg_err"/>
							<DAI name="dU" sAddr="B02.Goose.gocb09_cfg_err">
								<Val>GOOSE配置错_10</Val>
							</DAI>
						</DOI>
						<DOI name="Alm31" desc="GOOSE链路中断_11A">
							<DAI name="stVal" sAddr="B02.Goose.gocb10_a_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb10_a_link_down">
								<Val>GOOSE链路中断_11A</Val>
							</DAI>
						</DOI>
						<DOI name="Alm32" desc="GOOSE链路中断_11B">
							<DAI name="stVal" sAddr="B02.Goose.gocb10_b_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb10_b_link_down">
								<Val>GOOSE链路中断_11B</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOAlm" lnClass="GGIO" lnType="GDNR_V1_EVE_GGIO_NSR-3613A-N" inst="2" desc="GOOSE告警信号2">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Alm1" desc="GOOSE配置错_11">
							<DAI name="stVal" sAddr="B02.Goose.gocb10_cfg_err"/>
							<DAI name="dU" sAddr="B02.Goose.gocb10_cfg_err">
								<Val>GOOSE配置错_11</Val>
							</DAI>
						</DOI>
						<DOI name="Alm2" desc="GOOSE链路中断_12A">
							<DAI name="stVal" sAddr="B02.Goose.gocb11_a_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb11_a_link_down">
								<Val>GOOSE链路中断_12A</Val>
							</DAI>
						</DOI>
						<DOI name="Alm3" desc="GOOSE链路中断_12B">
							<DAI name="stVal" sAddr="B02.Goose.gocb11_b_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb11_b_link_down">
								<Val>GOOSE链路中断_12B</Val>
							</DAI>
						</DOI>
						<DOI name="Alm4" desc="GOOSE配置错_12">
							<DAI name="stVal" sAddr="B02.Goose.gocb11_cfg_err"/>
							<DAI name="dU" sAddr="B02.Goose.gocb11_cfg_err">
								<Val>GOOSE配置错_12</Val>
							</DAI>
						</DOI>
						<DOI name="Alm5" desc="GOOSE链路中断_13A">
							<DAI name="stVal" sAddr="B02.Goose.gocb12_a_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb12_a_link_down">
								<Val>GOOSE链路中断_13A</Val>
							</DAI>
						</DOI>
						<DOI name="Alm6" desc="GOOSE链路中断_13B">
							<DAI name="stVal" sAddr="B02.Goose.gocb12_b_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb12_b_link_down">
								<Val>GOOSE链路中断_13B</Val>
							</DAI>
						</DOI>
						<DOI name="Alm7" desc="GOOSE配置错_13">
							<DAI name="stVal" sAddr="B02.Goose.gocb12_cfg_err"/>
							<DAI name="dU" sAddr="B02.Goose.gocb12_cfg_err">
								<Val>GOOSE配置错_13</Val>
							</DAI>
						</DOI>
						<DOI name="Alm8" desc="GOOSE链路中断_14A">
							<DAI name="stVal" sAddr="B02.Goose.gocb13_a_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb13_a_link_down">
								<Val>GOOSE链路中断_14A</Val>
							</DAI>
						</DOI>
						<DOI name="Alm9" desc="GOOSE链路中断_14B">
							<DAI name="stVal" sAddr="B02.Goose.gocb13_b_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb13_b_link_down">
								<Val>GOOSE链路中断_14B</Val>
							</DAI>
						</DOI>
						<DOI name="Alm10" desc="GOOSE配置错_14">
							<DAI name="stVal" sAddr="B02.Goose.gocb13_cfg_err"/>
							<DAI name="dU" sAddr="B02.Goose.gocb13_cfg_err">
								<Val>GOOSE配置错_14</Val>
							</DAI>
						</DOI>
						<DOI name="Alm11" desc="GOOSE链路中断_15A">
							<DAI name="stVal" sAddr="B02.Goose.gocb14_a_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb14_a_link_down">
								<Val>GOOSE链路中断_15A</Val>
							</DAI>
						</DOI>
						<DOI name="Alm12" desc="GOOSE链路中断_15B">
							<DAI name="stVal" sAddr="B02.Goose.gocb14_b_link_down"/>
							<DAI name="dU" sAddr="B02.Goose.gocb14_b_link_down">
								<Val>GOOSE链路中断_15B</Val>
							</DAI>
						</DOI>
						<DOI name="Alm13" desc="GOOSE配置错_15">
							<DAI name="stVal" sAddr="B02.Goose.gocb14_cfg_err"/>
							<DAI name="dU" sAddr="B02.Goose.gocb14_cfg_err">
								<Val>GOOSE配置错_15</Val>
							</DAI>
						</DOI>
						<DOI name="Alm14" desc="GOOSE双网数据不一致_1">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[0]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[0]">
								<Val>GOOSE双网数据不一致_1</Val>
							</DAI>
						</DOI>
						<DOI name="Alm15" desc="GOOSE数据异常变化_1">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[0]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[0]">
								<Val>GOOSE数据异常变化_1</Val>
							</DAI>
						</DOI>
						<DOI name="Alm16" desc="GOOSE报文长期不更新_1">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[0]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[0]">
								<Val>GOOSE报文长期不更新_1</Val>
							</DAI>
						</DOI>
						<DOI name="Alm17" desc="GOOSE双网数据不一致_2">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[1]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[1]">
								<Val>GOOSE双网数据不一致_2</Val>
							</DAI>
						</DOI>
						<DOI name="Alm18" desc="GOOSE数据异常变化_2">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[1]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[1]">
								<Val>GOOSE数据异常变化_2</Val>
							</DAI>
						</DOI>
						<DOI name="Alm19" desc="GOOSE报文长期不更新_2">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[1]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[1]">
								<Val>GOOSE报文长期不更新_2</Val>
							</DAI>
						</DOI>
						<DOI name="Alm20" desc="GOOSE双网数据不一致_3">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[2]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[2]">
								<Val>GOOSE双网数据不一致_3</Val>
							</DAI>
						</DOI>
						<DOI name="Alm21" desc="GOOSE数据异常变化_3">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[2]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[2]">
								<Val>GOOSE数据异常变化_3</Val>
							</DAI>
						</DOI>
						<DOI name="Alm22" desc="GOOSE报文长期不更新_3">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[2]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[2]">
								<Val>GOOSE报文长期不更新_3</Val>
							</DAI>
						</DOI>
						<DOI name="Alm23" desc="GOOSE双网数据不一致_4">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[3]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[3]">
								<Val>GOOSE双网数据不一致_4</Val>
							</DAI>
						</DOI>
						<DOI name="Alm24" desc="GOOSE数据异常变化_4">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[3]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[3]">
								<Val>GOOSE数据异常变化_4</Val>
							</DAI>
						</DOI>
						<DOI name="Alm25" desc="GOOSE报文长期不更新_4">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[3]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[3]">
								<Val>GOOSE报文长期不更新_4</Val>
							</DAI>
						</DOI>
						<DOI name="Alm26" desc="GOOSE双网数据不一致_5">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[4]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[4]">
								<Val>GOOSE双网数据不一致_5</Val>
							</DAI>
						</DOI>
						<DOI name="Alm27" desc="GOOSE数据异常变化_5">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[4]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[4]">
								<Val>GOOSE数据异常变化_5</Val>
							</DAI>
						</DOI>
						<DOI name="Alm28" desc="GOOSE报文长期不更新_5">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[4]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[4]">
								<Val>GOOSE报文长期不更新_5</Val>
							</DAI>
						</DOI>
						<DOI name="Alm29" desc="GOOSE双网数据不一致_6">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[5]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[5]">
								<Val>GOOSE双网数据不一致_6</Val>
							</DAI>
						</DOI>
						<DOI name="Alm30" desc="GOOSE数据异常变化_6">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[5]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[5]">
								<Val>GOOSE数据异常变化_6</Val>
							</DAI>
						</DOI>
						<DOI name="Alm31" desc="GOOSE报文长期不更新_6">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[5]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[5]">
								<Val>GOOSE报文长期不更新_6</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="DSta" lnClass="GGIO" lnType="GDNR_V1_IND8_GGIO_NSR-3613A-N" inst="1" desc="装置运行状态信号1">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="运行">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.run_flag"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.run_flag">
								<Val>运行</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="异常">
							<DAI name="stVal" sAddr="B02.CNST_CommTest.LedSingleValue[1]"/>
							<DAI name="dU" sAddr="B02.CNST_CommTest.LedSingleValue[1]">
								<Val>异常</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="检修">
							<DAI name="stVal" sAddr="B02.CNST_CommTest.LedSingleValue[2]"/>
							<DAI name="dU" sAddr="B02.CNST_CommTest.LedSingleValue[2]">
								<Val>检修</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="跳闸">
							<DAI name="stVal" sAddr="B01.lcd.panel_led08_status"/>
							<DAI name="dU" sAddr="B01.lcd.panel_led08_status">
								<Val>跳闸</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="合闸">
							<DAI name="stVal" sAddr="B01.lcd.panel_led11_status"/>
							<DAI name="dU" sAddr="B01.lcd.panel_led11_status">
								<Val>合闸</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="跳位">
							<DAI name="stVal" sAddr="B02.CNST_CommTest.LedSingleValue[5]"/>
							<DAI name="dU" sAddr="B02.CNST_CommTest.LedSingleValue[5]">
								<Val>跳位</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="合位">
							<DAI name="stVal" sAddr="B02.CNST_CommTest.LedSingleValue[6]"/>
							<DAI name="dU" sAddr="B02.CNST_CommTest.LedSingleValue[6]">
								<Val>合位</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="GGIO" lnType="GDNR_V1_IP_GGIO_NSR-3613A-N" inst="1" desc="IP参数配置">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="NetAIp" desc="A网IP地址">
							<DAI name="setVal" sAddr="B01.iec103.ethernet_ip_addrB"/>
							<DAI name="dU" sAddr="B01.iec103.ethernet_ip_addrB">
								<Val>A网IP地址</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="NetBIp" desc="B网IP地址">
							<DAI name="setVal" sAddr="B01.iec103.ethernet_ip_addrC"/>
							<DAI name="dU" sAddr="B01.iec103.ethernet_ip_addrC">
								<Val>B网IP地址</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="NetCIp" desc="C网IP地址">
							<DAI name="setVal" sAddr="B01.iec103.ethernet_ip_addrD"/>
							<DAI name="dU" sAddr="B01.iec103.ethernet_ip_addrD">
								<Val>C网IP地址</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp1" desc="白名单IP地址1">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_00"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_00">
								<Val>白名单IP地址1</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp2" desc="白名单IP地址2">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_01"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_01">
								<Val>白名单IP地址2</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp3" desc="白名单IP地址3">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_02"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_02">
								<Val>白名单IP地址3</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp4" desc="白名单IP地址4">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_03"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_03">
								<Val>白名单IP地址4</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp5" desc="白名单IP地址5">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_04"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_04">
								<Val>白名单IP地址5</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp6" desc="白名单IP地址6">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_05"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_05">
								<Val>白名单IP地址6</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp7" desc="白名单IP地址7">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_06"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_06">
								<Val>白名单IP地址7</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp8" desc="白名单IP地址8">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_07"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_07">
								<Val>白名单IP地址8</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp9" desc="白名单IP地址9">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_08"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_08">
								<Val>白名单IP地址9</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp10" desc="白名单IP地址10">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_09"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_09">
								<Val>白名单IP地址10</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp11" desc="白名单IP地址11">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_10"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_10">
								<Val>白名单IP地址11</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp12" desc="白名单IP地址12">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_11"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_11">
								<Val>白名单IP地址12</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp13" desc="白名单IP地址13">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_12"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_12">
								<Val>白名单IP地址13</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp14" desc="白名单IP地址14">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_13"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_13">
								<Val>白名单IP地址14</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp15" desc="白名单IP地址15">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_14"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_14">
								<Val>白名单IP地址15</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp16" desc="白名单IP地址16">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_15"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_15">
								<Val>白名单IP地址16</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="GGIO" lnType="GDNR_V1_IP_GGIO_NSR-3613A-N" inst="2" desc="IP参数配置">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp1" desc="白名单IP地址17">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_16"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_16">
								<Val>白名单IP地址17</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp2" desc="白名单IP地址18">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_17"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_17">
								<Val>白名单IP地址18</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp3" desc="白名单IP地址19">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_18"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_18">
								<Val>白名单IP地址19</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp4" desc="白名单IP地址20">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_19"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_19">
								<Val>白名单IP地址20</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp5" desc="白名单IP地址21">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_20"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_20">
								<Val>白名单IP地址21</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp6" desc="白名单IP地址22">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_21"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_21">
								<Val>白名单IP地址22</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp7" desc="白名单IP地址23">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_22"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_22">
								<Val>白名单IP地址23</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp8" desc="白名单IP地址24">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_23"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_23">
								<Val>白名单IP地址24</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp9" desc="白名单IP地址25">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_24"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_24">
								<Val>白名单IP地址25</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp10" desc="白名单IP地址26">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_25"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_25">
								<Val>白名单IP地址26</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp11" desc="白名单IP地址27">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_26"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_26">
								<Val>白名单IP地址27</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp12" desc="白名单IP地址28">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_27"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_27">
								<Val>白名单IP地址28</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp13" desc="白名单IP地址29">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_28"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_28">
								<Val>白名单IP地址29</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp14" desc="白名单IP地址30">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_29"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_29">
								<Val>白名单IP地址30</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp15" desc="白名单IP地址31">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_30"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_30">
								<Val>白名单IP地址31</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ClientIp16" desc="白名单IP地址32">
							<DAI name="setVal" sAddr="B01.iec61850.white_list_ip_31"/>
							<DAI name="dU" sAddr="B01.iec61850.white_list_ip_31">
								<Val>白名单IP地址32</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="StaTx" lnClass="SCLI" lnType="GDNR_V1_SCLI_NSR-3613A-N" inst="1" desc="过程层光口1发送光强">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="LigIntes" desc="过程层光口1发送光强">
							<SDI name="mag">
								<DAI name="f" sAddr="B01.master.eth_tx_fiber_out_00"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>dBm</Val>
								</DAI>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>-50</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>0</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>10</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>10</Val>
							</DAI>
							<DAI name="dU" sAddr="B01.master.eth_tx_fiber_out_00">
								<Val>过程层光口1发送光强</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="StaTx" lnClass="SCLI" lnType="GDNR_V1_SCLI_NSR-3613A-N" inst="2" desc="过程层光口2发送光强">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="LigIntes" desc="过程层光口2发送光强">
							<SDI name="mag">
								<DAI name="f" sAddr="B01.master.eth_tx_fiber_out_01"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>dBm</Val>
								</DAI>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>-50</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>0</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>10</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>10</Val>
							</DAI>
							<DAI name="dU" sAddr="B01.master.eth_tx_fiber_out_01">
								<Val>过程层光口2发送光强</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="StaRx" lnClass="SCLI" lnType="GDNR_V1_SCLI_NSR-3613A-N" inst="3" desc="过程层光口1接收光强">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="LigIntes" desc="过程层光口1接收光强">
							<SDI name="mag">
								<DAI name="f" sAddr="B01.master.eth_rx_fiber_out_00"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>dBm</Val>
								</DAI>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>-50</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>0</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>10</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>10</Val>
							</DAI>
							<DAI name="dU" sAddr="B01.master.eth_rx_fiber_out_00">
								<Val>过程层光口1接收光强</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="StaRx" lnClass="SCLI" lnType="GDNR_V1_SCLI_NSR-3613A-N" inst="4" desc="过程层光口2接收光强">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="LigIntes" desc="过程层光口2接收光强">
							<SDI name="mag">
								<DAI name="f" sAddr="B01.master.eth_rx_fiber_out_01"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>dBm</Val>
								</DAI>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>-50</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>0</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>10</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>10</Val>
							</DAI>
							<DAI name="dU" sAddr="B01.master.eth_rx_fiber_out_01">
								<Val>过程层光口2接收光强</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="Warn" lnClass="GGIO" lnType="GDNR_V1_ALM8_GGIO_NSR-3613A-N" inst="1" desc="自检信号1">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Alm1" desc="过程层光口1发送光强越下限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_form_warning_00"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_form_warning_00">
								<Val>过程层光口1发送光强越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm2" desc="过程层光口2发送光强越下限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_form_warning_01"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_form_warning_01">
								<Val>过程层光口2发送光强越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm3" desc="过程层光口1接收光强越下限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_form_warning_00"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_form_warning_00">
								<Val>过程层光口1接收光强越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm4" desc="过程层光口2接收光强越下限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_form_warning_01"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_form_warning_01">
								<Val>过程层光口2接收光强越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm5" desc="过程层光口1发送光强越上限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_ready_warning_00"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_ready_warning_00">
								<Val>过程层光口1发送光强越上限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm6" desc="过程层光口2发送光强越上限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_ready_warning_01"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_ready_warning_01">
								<Val>过程层光口2发送光强越上限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm7" desc="过程层光口1接收光强越上限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_ready_warning_00"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_ready_warning_00">
								<Val>过程层光口1接收光强越上限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm8" desc="过程层光口2接收光强越上限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_ready_warning_01"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_ready_warning_01">
								<Val>过程层光口2接收光强越上限</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="Comm" lnClass="GGIO" lnType="GDNR_V1_TIME_GGIO_NSR-3613A-N" inst="1" desc="对时方式">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="VrifTmMod" desc="时钟源">
							<DAI name="setVal" sAddr="B01.synctime.time_source_mode"/>
							<DAI name="minVal" sAddr="B01.synctime.time_source_mode">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B01.synctime.time_source_mode">
								<Val>5</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B01.synctime.time_source_mode">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B01.synctime.time_source_mode">
								<Val>时钟源</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B01.synctime.time_source_mode">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOAlm" lnClass="GGIO" lnType="GDNR_V1_EVE_GGIO_NSR-3613A-N" inst="3" desc="GOOSE告警信号3">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Alm1" desc="GOOSE双网数据不一致_7">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[6]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[6]">
								<Val>GOOSE双网数据不一致_7</Val>
							</DAI>
						</DOI>
						<DOI name="Alm2" desc="GOOSE数据异常变化_7">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[6]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[6]">
								<Val>GOOSE数据异常变化_7</Val>
							</DAI>
						</DOI>
						<DOI name="Alm3" desc="GOOSE报文长期不更新_7">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[6]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[6]">
								<Val>GOOSE报文长期不更新_7</Val>
							</DAI>
						</DOI>
						<DOI name="Alm4" desc="GOOSE双网数据不一致_8">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[7]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[7]">
								<Val>GOOSE双网数据不一致_8</Val>
							</DAI>
						</DOI>
						<DOI name="Alm5" desc="GOOSE数据异常变化_8">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[7]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[7]">
								<Val>GOOSE数据异常变化_8</Val>
							</DAI>
						</DOI>
						<DOI name="Alm6" desc="GOOSE报文长期不更新_8">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[7]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[7]">
								<Val>GOOSE报文长期不更新_8</Val>
							</DAI>
						</DOI>
						<DOI name="Alm7" desc="GOOSE双网数据不一致_9">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[8]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[8]">
								<Val>GOOSE双网数据不一致_9</Val>
							</DAI>
						</DOI>
						<DOI name="Alm8" desc="GOOSE数据异常变化_9">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[8]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[8]">
								<Val>GOOSE数据异常变化_9</Val>
							</DAI>
						</DOI>
						<DOI name="Alm9" desc="GOOSE报文长期不更新_9">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[8]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[8]">
								<Val>GOOSE报文长期不更新_9</Val>
							</DAI>
						</DOI>
						<DOI name="Alm10" desc="GOOSE双网数据不一致_10">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[9]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[9]">
								<Val>GOOSE双网数据不一致_10</Val>
							</DAI>
						</DOI>
						<DOI name="Alm11" desc="GOOSE数据异常变化_10">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[9]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[9]">
								<Val>GOOSE数据异常变化_10</Val>
							</DAI>
						</DOI>
						<DOI name="Alm12" desc="GOOSE报文长期不更新_10">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[9]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[9]">
								<Val>GOOSE报文长期不更新_10</Val>
							</DAI>
						</DOI>
						<DOI name="Alm13" desc="GOOSE双网数据不一致_11">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[10]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[10]">
								<Val>GOOSE双网数据不一致_11</Val>
							</DAI>
						</DOI>
						<DOI name="Alm14" desc="GOOSE数据异常变化_11">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[10]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[10]">
								<Val>GOOSE数据异常变化_11</Val>
							</DAI>
						</DOI>
						<DOI name="Alm15" desc="GOOSE报文长期不更新_11">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[10]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[10]">
								<Val>GOOSE报文长期不更新_11</Val>
							</DAI>
						</DOI>
						<DOI name="Alm16" desc="GOOSE双网数据不一致_12">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[11]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[11]">
								<Val>GOOSE双网数据不一致_12</Val>
							</DAI>
						</DOI>
						<DOI name="Alm17" desc="GOOSE数据异常变化_12">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[11]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[11]">
								<Val>GOOSE数据异常变化_12</Val>
							</DAI>
						</DOI>
						<DOI name="Alm18" desc="GOOSE报文长期不更新_12">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[11]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[11]">
								<Val>GOOSE报文长期不更新_12</Val>
							</DAI>
						</DOI>
						<DOI name="Alm19" desc="GOOSE双网数据不一致_13">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[12]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[12]">
								<Val>GOOSE双网数据不一致_13</Val>
							</DAI>
						</DOI>
						<DOI name="Alm20" desc="GOOSE数据异常变化_13">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[12]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[12]">
								<Val>GOOSE数据异常变化_13</Val>
							</DAI>
						</DOI>
						<DOI name="Alm21" desc="GOOSE报文长期不更新_13">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[12]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[12]">
								<Val>GOOSE报文长期不更新_13</Val>
							</DAI>
						</DOI>
						<DOI name="Alm22" desc="GOOSE双网数据不一致_14">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[13]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[13]">
								<Val>GOOSE双网数据不一致_14</Val>
							</DAI>
						</DOI>
						<DOI name="Alm23" desc="GOOSE数据异常变化_14">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[13]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[13]">
								<Val>GOOSE数据异常变化_14</Val>
							</DAI>
						</DOI>
						<DOI name="Alm24" desc="GOOSE报文长期不更新_14">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[13]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[13]">
								<Val>GOOSE报文长期不更新_14</Val>
							</DAI>
						</DOI>
						<DOI name="Alm25" desc="GOOSE双网数据不一致_15">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[14]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_differ[14]">
								<Val>GOOSE双网数据不一致_15</Val>
							</DAI>
						</DOI>
						<DOI name="Alm26" desc="GOOSE数据异常变化_15">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[14]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.data_err_chg[14]">
								<Val>GOOSE数据异常变化_15</Val>
							</DAI>
						</DOI>
						<DOI name="Alm27" desc="GOOSE报文长期不更新_15">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[14]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.PGOS.no_refresh[14]">
								<Val>GOOSE报文长期不更新_15</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="YXpara" lnClass="GGIO" lnType="GDNR_V1_YXPara_GGIO_NSR-3613A-N" inst="1" desc="遥信参数">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V5.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms1" desc="YX1防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.singleYx[YX_SIN1].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.singleYx[YX_SIN1].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.singleYx[YX_SIN1].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.singleYx[YX_SIN1].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN1].Tset">
								<Val>YX1防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.singleYx[YX_SIN1].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.singleYx[YX_SIN1].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.singleYx[YX_SIN1].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms2" desc="YX2防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.singleYx[YX_SIN2].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.singleYx[YX_SIN2].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.singleYx[YX_SIN2].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.singleYx[YX_SIN2].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN2].Tset">
								<Val>YX2防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.singleYx[YX_SIN2].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.singleYx[YX_SIN2].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.singleYx[YX_SIN2].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms3" desc="YX3防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.singleYx[YX_SIN3].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.singleYx[YX_SIN3].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.singleYx[YX_SIN3].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.singleYx[YX_SIN3].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN3].Tset">
								<Val>YX3防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.singleYx[YX_SIN3].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.singleYx[YX_SIN3].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.singleYx[YX_SIN3].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms4" desc="YX4防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.singleYx[YX_SIN4].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.singleYx[YX_SIN4].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.singleYx[YX_SIN4].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.singleYx[YX_SIN4].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN4].Tset">
								<Val>YX4防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.singleYx[YX_SIN4].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.singleYx[YX_SIN4].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.singleYx[YX_SIN4].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms5" desc="YX5防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.singleYx[YX_SIN5].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.singleYx[YX_SIN5].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.singleYx[YX_SIN5].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.singleYx[YX_SIN5].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN5].Tset">
								<Val>YX5防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.singleYx[YX_SIN5].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.singleYx[YX_SIN5].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.singleYx[YX_SIN5].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms6" desc="YX6防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.singleYx[YX_SIN6].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.singleYx[YX_SIN6].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.singleYx[YX_SIN6].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.singleYx[YX_SIN6].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN6].Tset">
								<Val>YX6防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.singleYx[YX_SIN6].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.singleYx[YX_SIN6].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.singleYx[YX_SIN6].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms7" desc="YX7防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.singleYx[YX_SIN7].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.singleYx[YX_SIN7].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.singleYx[YX_SIN7].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.singleYx[YX_SIN7].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN7].Tset">
								<Val>YX7防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.singleYx[YX_SIN7].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.singleYx[YX_SIN7].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.singleYx[YX_SIN7].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms8" desc="YX8防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.singleYx[YX_SIN8].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.singleYx[YX_SIN8].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.singleYx[YX_SIN8].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.singleYx[YX_SIN8].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN8].Tset">
								<Val>YX8防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.singleYx[YX_SIN8].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.singleYx[YX_SIN8].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.singleYx[YX_SIN8].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms9" desc="YX9防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.singleYx[YX_SIN9].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.singleYx[YX_SIN9].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.singleYx[YX_SIN9].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.singleYx[YX_SIN9].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN9].Tset">
								<Val>YX9防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.singleYx[YX_SIN9].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.singleYx[YX_SIN9].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.singleYx[YX_SIN9].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms10" desc="YX10防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.singleYx[YX_SIN10].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.singleYx[YX_SIN10].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.singleYx[YX_SIN10].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.singleYx[YX_SIN10].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN10].Tset">
								<Val>YX10防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.singleYx[YX_SIN10].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.singleYx[YX_SIN10].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.singleYx[YX_SIN10].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms11" desc="YX11防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.singleYx[YX_SIN11].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.singleYx[YX_SIN11].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.singleYx[YX_SIN11].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.singleYx[YX_SIN11].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN11].Tset">
								<Val>YX11防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.singleYx[YX_SIN11].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.singleYx[YX_SIN11].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.singleYx[YX_SIN11].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms12" desc="YX12防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.singleYx[YX_SIN12].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.singleYx[YX_SIN12].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.singleYx[YX_SIN12].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.singleYx[YX_SIN12].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN12].Tset">
								<Val>YX12防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.singleYx[YX_SIN12].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.singleYx[YX_SIN12].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.singleYx[YX_SIN12].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms13" desc="YX13防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.singleYx[YX_SIN13].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.singleYx[YX_SIN13].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.singleYx[YX_SIN13].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.singleYx[YX_SIN13].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN13].Tset">
								<Val>YX13防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.singleYx[YX_SIN13].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.singleYx[YX_SIN13].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.singleYx[YX_SIN13].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms14" desc="YX14防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.singleYx[YX_SIN14].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.singleYx[YX_SIN14].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.singleYx[YX_SIN14].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.singleYx[YX_SIN14].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN14].Tset">
								<Val>YX14防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.singleYx[YX_SIN14].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.singleYx[YX_SIN14].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.singleYx[YX_SIN14].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms15" desc="YX15防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.singleYx[YX_SIN15].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.singleYx[YX_SIN15].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.singleYx[YX_SIN15].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.singleYx[YX_SIN15].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN15].Tset">
								<Val>YX15防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.singleYx[YX_SIN15].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.singleYx[YX_SIN15].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.singleYx[YX_SIN15].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms16" desc="YX16防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.singleYx[YX_SIN16].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.singleYx[YX_SIN16].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.singleYx[YX_SIN16].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.singleYx[YX_SIN16].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN16].Tset">
								<Val>YX16防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.singleYx[YX_SIN16].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.singleYx[YX_SIN16].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.singleYx[YX_SIN16].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms17" desc="YX17防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.singleYx[YX_SIN17].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.singleYx[YX_SIN17].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.singleYx[YX_SIN17].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.singleYx[YX_SIN17].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN17].Tset">
								<Val>YX17防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.singleYx[YX_SIN17].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.singleYx[YX_SIN17].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.singleYx[YX_SIN17].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms18" desc="YX18防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.singleYx[YX_SIN18].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.singleYx[YX_SIN18].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.singleYx[YX_SIN18].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.singleYx[YX_SIN18].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYx[YX_SIN18].Tset">
								<Val>YX18防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.singleYx[YX_SIN18].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.singleYx[YX_SIN18].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.singleYx[YX_SIN18].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms19" desc="双点YX1防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.twinsYx[0].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.twinsYx[0].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.twinsYx[0].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.twinsYx[0].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.twinsYx[0].Tset">
								<Val>双点YX1防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.twinsYx[0].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.twinsYx[0].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.twinsYx[0].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms20" desc="双点YX2防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.twinsYx[1].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.twinsYx[1].Tset">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_YX.twinsYx[1].Tset">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_YX.twinsYx[1].Tset">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_YX.twinsYx[1].Tset">
								<Val>双点YX2防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.twinsYx[1].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.twinsYx[1].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.twinsYx[1].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms21" desc="双点YX3防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.twinsYx[2].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.twinsYx[2].Tset"/>
							<DAI name="maxVal" sAddr="B02.CNST_YX.twinsYx[2].Tset"/>
							<DAI name="stepSize" sAddr="B02.CNST_YX.twinsYx[2].Tset"/>
							<DAI name="dU" sAddr="B02.CNST_YX.twinsYx[2].Tset">
								<Val>双点YX3防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.twinsYx[2].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.twinsYx[2].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.twinsYx[2].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="YXHoldTmms22" desc="双点YX4防抖时间">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.CNST_YX.twinsYx[3].Tset"/>
							<DAI name="minVal" sAddr="B02.CNST_YX.twinsYx[3].Tset"/>
							<DAI name="maxVal" sAddr="B02.CNST_YX.twinsYx[3].Tset"/>
							<DAI name="stepSize" sAddr="B02.CNST_YX.twinsYx[3].Tset"/>
							<DAI name="dU" sAddr="B02.CNST_YX.twinsYx[3].Tset">
								<Val>双点YX4防抖时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.CNST_YX.twinsYx[3].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.CNST_YX.twinsYx[3].Tset">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_YX.twinsYx[3].Tset">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="YKpara" lnClass="GGIO" lnType="GDNR_V1_CtrlPara_GGIO_NSR-3613A-N" inst="1" desc="遥控参数">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V5.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="CtrlOPTmms1" desc="断路器遥分出口脉宽">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro00.ptYkOTime">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.ctrlPro00.ptYkOTime">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.ctrlPro00.ptYkOTime"/>
							<DAI name="minVal" sAddr="B02.ctrlPro00.ptYkOTime">
								<Val>20</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.ctrlPro00.ptYkOTime">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.ctrlPro00.ptYkOTime">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.ctrlPro00.ptYkOTime">
								<Val>断路器遥分出口脉宽</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.ctrlPro00.ptYkOTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.ctrlPro00.ptYkOTime">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro00.ptYkOTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="CtrlCPTmms1" desc="断路器遥合出口脉宽">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro00.ptYkCTime">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.ctrlPro00.ptYkCTime">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.ctrlPro00.ptYkCTime"/>
							<DAI name="minVal" sAddr="B02.ctrlPro00.ptYkCTime">
								<Val>20</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.ctrlPro00.ptYkCTime">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.ctrlPro00.ptYkCTime">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.ctrlPro00.ptYkCTime">
								<Val>断路器遥合出口脉宽</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.ctrlPro00.ptYkCTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.ctrlPro00.ptYkCTime">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro00.ptYkCTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="CtrlOPTmms2" desc="手车1遥控分出口脉宽">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro01.ptYkOTime">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.ctrlPro01.ptYkOTime">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.ctrlPro01.ptYkOTime"/>
							<DAI name="minVal" sAddr="B02.ctrlPro01.ptYkOTime">
								<Val>20</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.ctrlPro01.ptYkOTime">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.ctrlPro01.ptYkOTime">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.ctrlPro01.ptYkOTime">
								<Val>手车1遥控分出口脉宽</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.ctrlPro01.ptYkOTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.ctrlPro01.ptYkOTime">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro01.ptYkOTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="CtrlCPTmms2" desc="手车1遥控合出口脉宽">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro01.ptYkCTime">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.ctrlPro01.ptYkCTime">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.ctrlPro01.ptYkCTime"/>
							<DAI name="minVal" sAddr="B02.ctrlPro01.ptYkCTime">
								<Val>20</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.ctrlPro01.ptYkCTime">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.ctrlPro01.ptYkCTime">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.ctrlPro01.ptYkCTime">
								<Val>手车1遥控合出口脉宽</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.ctrlPro01.ptYkCTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.ctrlPro01.ptYkCTime">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro01.ptYkCTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="CtrlOPTmms3" desc="手车2遥控分出口脉宽">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro02.ptYkOTime">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.ctrlPro02.ptYkOTime">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.ctrlPro02.ptYkOTime"/>
							<DAI name="minVal" sAddr="B02.ctrlPro02.ptYkOTime">
								<Val>20</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.ctrlPro02.ptYkOTime">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.ctrlPro02.ptYkOTime">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.ctrlPro02.ptYkOTime">
								<Val>手车2遥控分出口脉宽</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.ctrlPro02.ptYkOTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.ctrlPro02.ptYkOTime">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro02.ptYkOTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="CtrlCPTmms3" desc="手车2遥控合出口脉宽">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro02.ptYkCTime">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.ctrlPro02.ptYkCTime">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.ctrlPro02.ptYkCTime"/>
							<DAI name="minVal" sAddr="B02.ctrlPro02.ptYkCTime">
								<Val>20</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.ctrlPro02.ptYkCTime">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.ctrlPro02.ptYkCTime">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.ctrlPro02.ptYkCTime">
								<Val>手车2遥控合出口脉宽</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.ctrlPro02.ptYkCTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.ctrlPro02.ptYkCTime">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro02.ptYkCTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="CtrlOPTmms4" desc="接地刀闸遥控分出口脉宽">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro03.ptYkOTime">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.ctrlPro03.ptYkOTime">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.ctrlPro03.ptYkOTime"/>
							<DAI name="minVal" sAddr="B02.ctrlPro03.ptYkOTime">
								<Val>20</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.ctrlPro03.ptYkOTime">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.ctrlPro03.ptYkOTime">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.ctrlPro03.ptYkOTime">
								<Val>接地刀闸遥控分出口脉宽</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.ctrlPro03.ptYkOTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.ctrlPro03.ptYkOTime">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro03.ptYkOTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="CtrlCPTmms4" desc="接地刀闸遥控合出口脉宽">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro03.ptYkCTime">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.ctrlPro03.ptYkCTime">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.ctrlPro03.ptYkCTime"/>
							<DAI name="minVal" sAddr="B02.ctrlPro03.ptYkCTime">
								<Val>20</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.ctrlPro03.ptYkCTime">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.ctrlPro03.ptYkCTime">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.ctrlPro03.ptYkCTime">
								<Val>接地刀闸遥控合出口脉宽</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.ctrlPro03.ptYkCTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.ctrlPro03.ptYkCTime">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro03.ptYkCTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="CtrlOPTmms5" desc="手车1复归出口脉宽">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro04.ptYkOTime">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.ctrlPro04.ptYkOTime">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.ctrlPro04.ptYkOTime"/>
							<DAI name="minVal" sAddr="B02.ctrlPro04.ptYkOTime">
								<Val>20</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.ctrlPro04.ptYkOTime">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.ctrlPro04.ptYkOTime">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.ctrlPro04.ptYkOTime">
								<Val>手车1复归出口脉宽</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.ctrlPro04.ptYkOTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.ctrlPro04.ptYkOTime">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro04.ptYkOTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="CtrlCPTmms5" desc="手车2复归出口脉宽">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro05.ptYkOTime">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.ctrlPro05.ptYkOTime">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.ctrlPro05.ptYkOTime"/>
							<DAI name="minVal" sAddr="B02.ctrlPro05.ptYkOTime">
								<Val>20</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.ctrlPro05.ptYkOTime">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.ctrlPro05.ptYkOTime">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.ctrlPro05.ptYkOTime">
								<Val>手车2复归出口脉宽</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.ctrlPro05.ptYkOTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.ctrlPro05.ptYkOTime">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro05.ptYkOTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="CtrlOPTmms6" desc="手车2复归出口脉宽">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.ctrlPro05.ptYkOTime"/>
							<DAI name="minVal" sAddr="B02.ctrlPro05.ptYkOTime">
								<Val>20</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.ctrlPro05.ptYkOTime">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.ctrlPro05.ptYkOTime">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.ctrlPro05.ptYkOTime">
								<Val>手车2复归出口脉宽</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.ctrlPro05.ptYkOTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.ctrlPro05.ptYkOTime">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro05.ptYkOTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="CtrlCPTmms6" desc="手车2复归出口脉宽">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.ctrlPro05.ptYkCTime"/>
							<DAI name="minVal" sAddr="B02.ctrlPro05.ptYkCTime">
								<Val>20</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.ctrlPro05.ptYkCTime">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.ctrlPro05.ptYkCTime">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.ctrlPro05.ptYkCTime">
								<Val>手车2复归出口脉宽</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.ctrlPro05.ptYkCTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.ctrlPro05.ptYkCTime">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro05.ptYkCTime">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="YCpara" lnClass="GGIO" lnType="GDNR_V1_YCPara_GGIO_NSR-3613A-N" inst="1" desc="遥测参数">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V5.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="BusVRtgPri" desc="母线侧额定一次电压">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_pt1"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.MCU_Cal_Block.yc1_pt1">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.MCU_Cal_Block.yc1_pt1">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.MCU_Cal_Block.yc1_pt1"/>
								<DAI name="offset" sAddr="B02.MCU_Cal_Block.yc1_pt1"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_pt1">
									<Val>3</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_pt1">
									<Val>1000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_pt1">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.MCU_Cal_Block.yc1_pt1">
								<Val>母线侧额定一次电压</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.MCU_Cal_Block.yc1_pt1">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="BusVRtgSnd" desc="母线侧额定二次电压">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_pt2"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.MCU_Cal_Block.yc1_pt2">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.MCU_Cal_Block.yc1_pt2"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.MCU_Cal_Block.yc1_pt2"/>
								<DAI name="offset" sAddr="B02.MCU_Cal_Block.yc1_pt2"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_pt2">
									<Val>57.74</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_pt2">
									<Val>100.00</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_pt2">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.MCU_Cal_Block.yc1_pt2">
								<Val>母线侧额定二次电压</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.MCU_Cal_Block.yc1_pt2">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="BusARtgPri" desc="母线侧额定一次电流">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_ct1"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.MCU_Cal_Block.yc1_ct1">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.MCU_Cal_Block.yc1_ct1"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.MCU_Cal_Block.yc1_ct1"/>
								<DAI name="offset" sAddr="B02.MCU_Cal_Block.yc1_ct1"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_ct1">
									<Val>5</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_ct1">
									<Val>25000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_ct1">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.MCU_Cal_Block.yc1_ct1">
								<Val>母线侧额定一次电流</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.MCU_Cal_Block.yc1_ct1">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="BusARtgSnd" desc="母线侧额定二次电流">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_ct2"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.MCU_Cal_Block.yc1_ct2">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.MCU_Cal_Block.yc1_ct2"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.MCU_Cal_Block.yc1_ct2"/>
								<DAI name="offset" sAddr="B02.MCU_Cal_Block.yc1_ct2"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_ct2">
									<Val>1.00</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_ct2">
									<Val>5.00</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_ct2">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.MCU_Cal_Block.yc1_ct2">
								<Val>母线侧额定二次电流</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.MCU_Cal_Block.yc1_ct2">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="LinVRtgPri" desc="线路侧额定一次电压">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_usa_pt1"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.MCU_Cal_Block.yc1_usa_pt1">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.MCU_Cal_Block.yc1_usa_pt1">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.MCU_Cal_Block.yc1_usa_pt1"/>
								<DAI name="offset" sAddr="B02.MCU_Cal_Block.yc1_usa_pt1"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_usa_pt1">
									<Val>3</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_usa_pt1">
									<Val>1000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_usa_pt1">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.MCU_Cal_Block.yc1_usa_pt1">
								<Val>线路侧额定一次电压</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.MCU_Cal_Block.yc1_usa_pt1">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="LinVRtgSnd" desc="线路侧额定二次电压">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_usa_pt2"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.MCU_Cal_Block.yc1_usa_pt2">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.MCU_Cal_Block.yc1_usa_pt2"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.MCU_Cal_Block.yc1_usa_pt2"/>
								<DAI name="offset" sAddr="B02.MCU_Cal_Block.yc1_usa_pt2"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_usa_pt2">
									<Val>57.74</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_usa_pt2">
									<Val>100.00</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc1_usa_pt2">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.MCU_Cal_Block.yc1_usa_pt2">
								<Val>线路侧额定二次电压</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.MCU_Cal_Block.yc1_usa_pt2">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="Teldb" desc="电流电压变化死区(%)">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc_UI_db"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.MCU_Cal_Block.yc_UI_db"/>
								<DAI name="multiplier" sAddr="B02.MCU_Cal_Block.yc_UI_db"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.MCU_Cal_Block.yc_UI_db"/>
								<DAI name="offset" sAddr="B02.MCU_Cal_Block.yc_UI_db"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc_UI_db">
									<Val>0</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc_UI_db">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.MCU_Cal_Block.yc_UI_db">
									<Val>0.0001</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.MCU_Cal_Block.yc_UI_db">
								<Val>电流电压变化死区(%)</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.MCU_Cal_Block.yc_UI_db">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="Frdb" desc="频率变化死区">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.FREQ_BLOCK01.freqDb"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.FREQ_BLOCK01.freqDb">
									<Val>Hz</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.FREQ_BLOCK01.freqDb"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.FREQ_BLOCK01.freqDb"/>
								<DAI name="offset" sAddr="B02.FREQ_BLOCK01.freqDb"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.FREQ_BLOCK01.freqDb">
									<Val>0.002</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.FREQ_BLOCK01.freqDb">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.FREQ_BLOCK01.freqDb">
									<Val>0.0001</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.FREQ_BLOCK01.freqDb">
								<Val>频率变化死区</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.FREQ_BLOCK01.freqDb">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="TQpara" lnClass="RSYN" lnType="GDNR_V2_RSYN_NSR-3613A-N" inst="1" desc="同期参数">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="SynVolMod" desc="同期电压基准">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro00.ptPara_Usaref"/>
								<DAI name="multiplier" sAddr="B02.ctrlPro00.ptPara_Usaref"/>
							</SDI>
							<DAI name="setVal" sAddr="B02.ctrlPro00.ptPara_Usaref"/>
							<DAI name="minVal" sAddr="B02.ctrlPro00.ptPara_Usaref">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.ctrlPro00.ptPara_Usaref">
								<Val>5</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.ctrlPro00.ptPara_Usaref">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.ctrlPro00.ptPara_Usaref">
								<Val>同期电压基准</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.ctrlPro00.ptPara_Usaref">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.ctrlPro00.ptPara_Usaref">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro00.ptPara_Usaref">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="PhaVLinRtgSnd" desc="线路侧额定二次相电压">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Ue1"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro00.ptPara_Ue1">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.ctrlPro00.ptPara_Ue1"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.ctrlPro00.ptPara_Ue1"/>
								<DAI name="offset" sAddr="B02.ctrlPro00.ptPara_Ue1"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Ue1">
									<Val>0</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Ue1">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Ue1">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.ctrlPro00.ptPara_Ue1">
								<Val>线路侧额定二次相电压</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro00.ptPara_Ue1">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="PhaVBusRtgSnd" desc="母线侧额定二次相电压">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Ue2"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro00.ptPara_Ue2">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.ctrlPro00.ptPara_Ue2"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.ctrlPro00.ptPara_Ue2"/>
								<DAI name="offset" sAddr="B02.ctrlPro00.ptPara_Ue2"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Ue2">
									<Val>0</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Ue2">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Ue2">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.ctrlPro00.ptPara_Ue2">
								<Val>母线侧额定二次相电压</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro00.ptPara_Ue2">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ChkLivPct" desc="有压定值(%)">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_UhvPer"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro00.ptPara_UhvPer"/>
								<DAI name="multiplier" sAddr="B02.ctrlPro00.ptPara_UhvPer"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.ctrlPro00.ptPara_UhvPer"/>
								<DAI name="offset" sAddr="B02.ctrlPro00.ptPara_UhvPer"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_UhvPer">
									<Val>0</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_UhvPer">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_UhvPer">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.ctrlPro00.ptPara_UhvPer">
								<Val>有压定值(%)</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro00.ptPara_UhvPer">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="ChkDeaPct" desc="无压定值(%)">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_UnvPer"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro00.ptPara_UnvPer"/>
								<DAI name="multiplier" sAddr="B02.ctrlPro00.ptPara_UnvPer"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.ctrlPro00.ptPara_UnvPer"/>
								<DAI name="offset" sAddr="B02.ctrlPro00.ptPara_UnvPer"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_UnvPer">
									<Val>0</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_UnvPer">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_UnvPer">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.ctrlPro00.ptPara_UnvPer">
								<Val>无压定值(%)</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro00.ptPara_UnvPer">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="RteHz" desc="滑差定值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_DfDt"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro00.ptPara_DfDt">
									<Val>Hz/s</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.ctrlPro00.ptPara_DfDt"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.ctrlPro00.ptPara_DfDt"/>
								<DAI name="offset" sAddr="B02.ctrlPro00.ptPara_DfDt"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_DfDt">
									<Val>0</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_DfDt">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_DfDt">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.ctrlPro00.ptPara_DfDt">
								<Val>滑差定值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro00.ptPara_DfDt">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="DifHz" desc="频差定值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Df"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro00.ptPara_Df">
									<Val>Hz</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.ctrlPro00.ptPara_Df"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.ctrlPro00.ptPara_Df"/>
								<DAI name="offset" sAddr="B02.ctrlPro00.ptPara_Df"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Df">
									<Val>0</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Df">
									<Val>0.5</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Df">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.ctrlPro00.ptPara_Df">
								<Val>频差定值</Val>
							</DAI>
						</DOI>
						<DOI name="DifV" desc="压差定值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Du"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro00.ptPara_Du">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.ctrlPro00.ptPara_Du"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.ctrlPro00.ptPara_Du"/>
								<DAI name="offset" sAddr="B02.ctrlPro00.ptPara_Du"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Du">
									<Val>0</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Du">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Du">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.ctrlPro00.ptPara_Du">
								<Val>压差定值</Val>
							</DAI>
						</DOI>
						<DOI name="DifAng" desc="角差定值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Sita"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro00.ptPara_Sita">
									<Val>deg</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.ctrlPro00.ptPara_Sita"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.ctrlPro00.ptPara_Sita"/>
								<DAI name="offset" sAddr="B02.ctrlPro00.ptPara_Sita"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Sita">
									<Val>0</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Sita">
									<Val>30</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.ctrlPro00.ptPara_Sita">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.ctrlPro00.ptPara_Sita">
								<Val>角差定值</Val>
							</DAI>
						</DOI>
						<DOI name="BkrTmms" desc="断路器合闸时间">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro00.ptPara_Tdq">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.ctrlPro00.ptPara_Tdq">
									<Val>m</Val>
								</DAI>
							</SDI>
							<DAI name="setVal" sAddr="B02.ctrlPro00.ptPara_Tdq"/>
							<DAI name="minVal" sAddr="B02.ctrlPro00.ptPara_Tdq">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.ctrlPro00.ptPara_Tdq">
								<Val>200</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.ctrlPro00.ptPara_Tdq">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.ctrlPro00.ptPara_Tdq">
								<Val>断路器合闸时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.ctrlPro00.ptPara_Tdq">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.ctrlPro00.ptPara_Tdq">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro00.ptPara_Tdq">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="SynCatmms" desc="同期捕捉时间">
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.ctrlPro00.ptPara_Ttq">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.ctrlPro00.ptPara_Ttq"/>
							</SDI>
							<DAI name="setVal" sAddr="B02.ctrlPro00.ptPara_Ttq"/>
							<DAI name="minVal" sAddr="B02.ctrlPro00.ptPara_Ttq">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.ctrlPro00.ptPara_Ttq">
								<Val>120</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.ctrlPro00.ptPara_Ttq">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.ctrlPro00.ptPara_Ttq">
								<Val>同期捕捉时间</Val>
							</DAI>
							<DAI name="cdcNs" sAddr="B02.ctrlPro00.ptPara_Ttq">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
							<DAI name="cdcName" sAddr="B02.ctrlPro00.ptPara_Ttq">
								<Val>CSG_ING_SP_EX</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.ctrlPro00.ptPara_Ttq">
								<Val>GDNR_MODEL:2016</Val>
							</DAI>
						</DOI>
						<DOI name="PTFBlk" desc="PT断线闭锁">
							<DAI name="setVal" sAddr="B02.ctrlPro00.ptPara_PtAlm"/>
							<DAI name="dU" sAddr="B02.ctrlPro00.ptPara_PtAlm">
								<Val>PT断线闭锁</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>CN MODEL:2016</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice inst="RCD" desc="录波">
					<LN0 lnClass="LLN0" lnType="GDNR_V1_LLN0_NSR-3613A-N" inst="" desc="录波逻辑节点0">
						<DataSet name="dsRelayRec" desc="保护故障报告信息">
							<FCDA ldInst="RCD" lnClass="RDRE" lnInst="1" doName="RcdMade" fc="ST"/>
							<FCDA ldInst="RCD" lnClass="RDRE" lnInst="1" doName="FltNum" fc="ST"/>
						</DataSet>
						<ReportControl name="brcbRelayRec" datSet="dsRelayRec" intgPd="300000" rptID="RCD/LLN0$BR$brcbRelayRec" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="true" dupd="true" period="true"/>
							<OptFields seqNum="false" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="false" configRef="false"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="逻辑节点铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>逻辑节点铭牌</Val>
							</DAI>
							<DAI name="configRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2003</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="LPHD" lnType="GDNR_V1_LPHD_NSR-3613A-N" inst="1" desc="装置物理信息">
						<DOI name="PhyNam" desc="物理装置铭牌"/>
						<DOI name="PhyHealth" desc="物理装置健康状况"/>
						<DOI name="Proxy" desc="是否为代理">
							<DAI name="dU">
								<Val>是否为代理</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="RDRE" lnType="GDNR_V1_RDRE_NSR-3613A-N" inst="1" desc="录波">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="RcdMade" desc="录波完成">
							<DAI name="dU">
								<Val>录波完成</Val>
							</DAI>
						</DOI>
						<DOI name="FltNum" desc="故障序号">
							<DAI name="dU">
								<Val>故障序号</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
			</Server>
		</AccessPoint>
		<AccessPoint name="G1" desc="过程层GOOSE" router="false" clock="false">
			<Server timeout="30">
				<Authentication none="false" password="false" weak="false" strong="false" certificate="false"/>
				<LDevice inst="PIGO" desc="过程层GOOSE">
					<LN0 lnClass="LLN0" lnType="GDNR_V2_LLN0_NSR-3613A-N" inst="" desc="逻辑节点0">
						<DataSet name="dsGOOSE1" desc="GOOSE出口数据集1">
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal" fc="ST"/>
						</DataSet>
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="逻辑节点铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>逻辑节点铭牌</Val>
							</DAI>
							<DAI name="configRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2003</Val>
							</DAI>
						</DOI>
						<GSEControl name="gocb1" datSet="dsGOOSE1" confRev="1" type="GOOSE" appID="TEMPLATEPIGO/LLN0$GO$gocb1"/>
					</LN0>
					<LN lnClass="LPHD" lnType="GDNR_V2_LPHD_NSR-3613A-N" inst="1" desc="装置物理信息">
						<DOI name="PhyNam" desc="物理装置铭牌"/>
						<DOI name="PhyHealth" desc="Health">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="Proxy" desc="是否为代理">
							<DAI name="dU">
								<Val>是否为代理</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOOUT" lnClass="GGIO" lnType="GDNR_V1_SPS32_GGIO_NSR-3613A-N" inst="1" desc="GOOSE输出">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="性能">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="保护动作">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[0]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[0]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[0]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[0]">
								<Val>保护动作</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="合闸动作">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[1]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[1]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[1]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[1]">
								<Val>合闸动作</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="XCBR" lnType="GDNR_V1_XCBR_NSR-3613A-N" inst="1" desc="断路器">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Pos" desc="断路器位置">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TwinsYx[0]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TwinsYx[0]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TwinsYx[0]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TwinsYx[0]">
								<Val>断路器位置</Val>
							</DAI>
						</DOI>
						<DOI name="BlkOpn" desc="跳闸闭锁">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU">
								<Val>跳闸闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="BlkCls" desc="合闸闭锁">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU">
								<Val>合闸闭锁</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOIN" lnClass="GGIO" lnType="GDNR_V1_SPC8_GGIO_NSR-3613A-N" inst="1" desc="GOOSE单点输入">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO1" desc="跳闸开入1">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProTz[0],&lt;B02.goose.soe_out_021"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_021_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_021_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_021">
								<Val>跳闸开入1</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO2" desc="跳闸开入2">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProTz[1],&lt;B02.goose.soe_out_022"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_022_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_022_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_022">
								<Val>跳闸开入2</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO3" desc="跳闸开入3">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProTz[2],&lt;B02.goose.soe_out_023"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_023_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_023_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_023">
								<Val>跳闸开入3</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO4" desc="跳闸开入4">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProTz[3],&lt;B02.goose.soe_out_024"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_024_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_024_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_024">
								<Val>跳闸开入4</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO5" desc="跳闸开入5">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProTz[4],&lt;B02.goose.soe_out_025"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_025_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_025_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_025">
								<Val>跳闸开入5</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO6" desc="跳闸开入6">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProTz[5],&lt;B02.goose.soe_out_026"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_026_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_026_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_026">
								<Val>跳闸开入6</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO7" desc="跳闸开入7">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProTz[6],&lt;B02.goose.soe_out_027"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_027_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_027_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_027">
								<Val>跳闸开入7</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO8" desc="跳闸开入8">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProTz[7],&lt;B02.goose.soe_out_028"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_028_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_028_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_028">
								<Val>跳闸开入8</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOIN" lnClass="GGIO" lnType="GDNR_V1_SPC8_GGIO_NSR-3613A-N" inst="2" desc="GOOSE单点输入">
						<DOI name="Mod" desc="模式">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="行为">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="Health" desc="健康状态">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.01</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO1" desc="合闸开入1">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProHz[0],&lt;B02.goose.soe_out_029"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_029_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_029_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_029">
								<Val>合闸开入1</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO2" desc="合闸开入2">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProHz[1],&lt;B02.goose.soe_out_030"/>
							<DAI name="q" sAddr="&lt;B02.goose.soe_out_030_q"/>
							<DAI name="t" sAddr="&lt;B02.goose.soe_out_030_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>10000</Val>
							</DAI>
							<DAI name="dU" sAddr="&lt;B02.goose.soe_out_030">
								<Val>合闸开入2</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO3" desc="可控单点3/GOOSE输入虚端子">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU">
								<Val>可控单点3/GOOSE输入虚端子</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO4" desc="可控单点4/GOOSE输入虚端子">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU">
								<Val>可控单点4/GOOSE输入虚端子</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO5" desc="可控单点5/GOOSE输入虚端子">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU">
								<Val>可控单点5/GOOSE输入虚端子</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO6" desc="可控单点6/GOOSE输入虚端子">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU">
								<Val>可控单点6/GOOSE输入虚端子</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO7" desc="可控单点7/GOOSE输入虚端子">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU">
								<Val>可控单点7/GOOSE输入虚端子</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO8" desc="可控单点8/GOOSE输入虚端子">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU">
								<Val>可控单点8/GOOSE输入虚端子</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
			</Server>
		</AccessPoint>
	</IED>
	<DataTypeTemplates>
		<LNodeType id="GDNR_V1_LLN0_NSR-3613A-N" desc="LLN0" lnClass="LLN0">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="CN_LPL_LN0"/>
		</LNodeType>
		<LNodeType id="GDNR_V2_LPHD_NSR-3613A-N" desc="物理装置信息,适用于过程层接口LD" lnClass="LPHD">
			<DO name="PhyNam" desc="物理装置铭牌" type="CN_DPL"/>
			<DO name="PhyHealth" desc="物理装置健康状况" type="CN_INS_Health"/>
			<DO name="Proxy" desc="是否为代理" type="CN_SPS"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_CSWI_NSR-3613A-N" desc="控制开关/刀闸" lnClass="CSWI">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="Pos" desc="位置" type="CN_DPC"/>
		</LNodeType>
		<LNodeType id="GDNR_V3_GAPC_NSR-3613A-N" desc="接地选跳" lnClass="GAPC">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="CN_LPL"/>
			<DO name="SPCSO" desc="单位置状态输出" type="CN_SPC_DC"/>
			<DO name="Str" desc="启动" type="CN_ACD"/>
			<DO name="Op" desc="动作" type="CN_ACT"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_SPS32_GGIO_NSR-3613A-N" desc="32单点遥信" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="性能" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="Ind1" desc="遥信1" type="CN_SPS"/>
			<DO name="Ind2" desc="遥信2" type="CN_SPS"/>
			<DO name="Ind3" desc="遥信3" type="CN_SPS"/>
			<DO name="Ind4" desc="遥信4" type="CN_SPS"/>
			<DO name="Ind5" desc="遥信5" type="CN_SPS"/>
			<DO name="Ind6" desc="遥信6" type="CN_SPS"/>
			<DO name="Ind7" desc="遥信7" type="CN_SPS"/>
			<DO name="Ind8" desc="遥信8" type="CN_SPS"/>
			<DO name="Ind9" desc="遥信9" type="CN_SPS"/>
			<DO name="Ind10" desc="遥信10" type="CN_SPS"/>
			<DO name="Ind11" desc="遥信11" type="CN_SPS"/>
			<DO name="Ind12" desc="遥信12" type="CN_SPS"/>
			<DO name="Ind13" desc="遥信13" type="CN_SPS"/>
			<DO name="Ind14" desc="遥信14" type="CN_SPS"/>
			<DO name="Ind15" desc="遥信15" type="CN_SPS"/>
			<DO name="Ind16" desc="遥信16" type="CN_SPS"/>
			<DO name="Ind17" desc="遥信17" type="CN_SPS"/>
			<DO name="Ind18" desc="遥信18" type="CN_SPS"/>
			<DO name="Ind19" desc="遥信19" type="CN_SPS"/>
			<DO name="Ind20" desc="遥信20" type="CN_SPS"/>
			<DO name="Ind21" desc="遥信21" type="CN_SPS"/>
			<DO name="Ind22" desc="遥信22" type="CN_SPS"/>
			<DO name="Ind23" desc="遥信23" type="CN_SPS"/>
			<DO name="Ind24" desc="遥信24" type="CN_SPS"/>
			<DO name="Ind25" desc="遥信25" type="CN_SPS"/>
			<DO name="Ind26" desc="遥信26" type="CN_SPS"/>
			<DO name="Ind27" desc="遥信27" type="CN_SPS"/>
			<DO name="Ind28" desc="遥信28" type="CN_SPS"/>
			<DO name="Ind29" desc="遥信29" type="CN_SPS"/>
			<DO name="Ind31" desc="遥信31" type="CN_SPS"/>
			<DO name="Ind32" desc="遥信32" type="CN_SPS"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_DPS8_GGIO_NSR-3613A-N" desc="8双点开入" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="DPCSO1" desc="双点开入1" type="GDNR_NSR_V1_DPC"/>
			<DO name="DPCSO2" desc="双点开入2" type="GDNR_NSR_V1_DPC"/>
			<DO name="DPCSO3" desc="双点开入3" type="GDNR_NSR_V1_DPC"/>
			<DO name="DPCSO4" desc="双点开入4" type="GDNR_NSR_V1_DPC"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_SPC32_GGIO_NSR-3613A-N" desc="32可控单点" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="SPCSO1" desc="可控单点1/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO2" desc="可控单点2/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO3" desc="可控单点3/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO4" desc="可控单点4/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO5" desc="可控单点5/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO6" desc="可控单点6/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO7" desc="可控单点7/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO8" desc="可控单点8/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO9" desc="可控单点9/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO10" desc="可控单点10/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO11" desc="可控单点11/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO12" desc="可控单点12/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO13" desc="可控单点13/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO14" desc="可控单点14/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO15" desc="可控单点15/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO16" desc="可控单点16/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO17" desc="可控单点17/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO18" desc="可控单点18/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO19" desc="可控单点19/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO20" desc="可控单点20/GOOSE输入虚端子" type="CN_SPC"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_DPC8_GGIO_NSR-3613A-N" desc="8可控双点" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="DPCSO1" desc="可控双点1" type="CN_DPC"/>
			<DO name="DPCSO2" desc="可控双点2" type="CN_DPC"/>
			<DO name="DPCSO3" desc="可控双点3" type="CN_DPC"/>
			<DO name="DPCSO4" desc="可控双点4" type="CN_DPC"/>
			<DO name="DPCSO5" desc="可控双点5" type="CN_DPC"/>
			<DO name="DPCSO6" desc="可控双点6" type="CN_DPC"/>
			<DO name="DPCSO7" desc="可控双点7" type="CN_DPC"/>
			<DO name="DPCSO8" desc="可控双点8" type="CN_DPC"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_AnIn8_GGIO_NSR-3613A-N" desc="8路浮点型模拟量输入" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="AnIn1" desc="模入1" type="CN_MV"/>
			<DO name="AnIn2" desc="模入2" type="CN_MV"/>
			<DO name="AnIn3" desc="模入3" type="CN_MV"/>
			<DO name="AnIn4" desc="模入4" type="CN_MV"/>
			<DO name="AnIn5" desc="模入5" type="CN_MV"/>
			<DO name="AnIn6" desc="模入6" type="CN_MV"/>
			<DO name="AnIn7" desc="模入7" type="CN_MV"/>
			<DO name="AnIn8" desc="模入8" type="CN_MV"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_CILO_NSR-3613A-N" desc="联闭锁" lnClass="CILO">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="CN_LPL"/>
			<DO name="EnaOpn" desc="允许分闸" type="CN_SPS"/>
			<DO name="EnaCls" desc="允许合闸" type="CN_SPS"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_IND8_GGIO_NSR-3613A-N" desc="8单点开入" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="Ind1" desc="开入1" type="CN_SPS"/>
			<DO name="Ind2" desc="开入2" type="CN_SPS"/>
			<DO name="Ind3" desc="开入3" type="CN_SPS"/>
			<DO name="Ind4" desc="开入4" type="CN_SPS"/>
			<DO name="Ind5" desc="开入5" type="CN_SPS"/>
			<DO name="Ind6" desc="开入6" type="CN_SPS"/>
			<DO name="Ind7" desc="开入7" type="CN_SPS"/>
			<DO name="Ind8" desc="开入8" type="CN_SPS"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_SPC8_GGIO_NSR-3613A-N" desc="8可控单点" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="SPCSO1" desc="可控单点1/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO2" desc="可控单点2/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO3" desc="可控单点3/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO4" desc="可控单点4/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO5" desc="可控单点5/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO6" desc="可控单点6/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO7" desc="可控单点7/GOOSE输入虚端子" type="CN_SPC"/>
			<DO name="SPCSO8" desc="可控单点8/GOOSE输入虚端子" type="CN_SPC"/>
		</LNodeType>
		<LNodeType id="GDNR_V5_LLN0_NSR-3613A-N" desc="LLN0" lnClass="LLN0">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="CN_LPL_LN0"/>
			<DO name="LEDRs" desc="复归LED" type="CN_SPC_DC"/>
			<DO name="RemSetEna" desc="远方修改定值" type="CN_SPS_EX"/>
			<DO name="RemGrpEna" desc="远方切换定值区" type="CN_SPS_EX"/>
			<DO name="RemStrpEna" desc="远方控制压板" type="CN_SPS_EX"/>
		</LNodeType>
		<LNodeType id="GDNR_V4_LPHD_NSR-3613A-N" desc="物理设备逻辑节点" lnClass="LPHD">
			<DO name="PhyNam" desc="物理装置铭牌" type="CN_DPL"/>
			<DO name="PhyHealth" desc="物理装置健康状况" type="CN_INS_Health"/>
			<DO name="Proxy" desc="该逻辑节点是否为代理" type="CN_SPS"/>
			<DO name="SettingGrp" desc="定值区号" type="CN_ING_SP_EX"/>
			<DO name="DeviceName" desc="被保护设备" type="CN_STG_SP_EX"/>
			<DO name="StaName" desc="厂站名" type="CN_STG_SP_EX"/>
		</LNodeType>
		<LNodeType id="GDNR_V2_TCTR_NSR-3613A-N" desc="电流互感器(变压器)" lnClass="TCTR">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="CN_LPL"/>
			<DO name="Amp" desc="电流采样值" type="CN_SAV"/>
			<DO name="ARtg" desc="额定电流" type="CN_ASG_SP"/>
			<DO name="ARtgSnd" desc="二次额定电流" type="CN_ASG_SP_EX"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_TVTR_NSR-3613A-N" desc="电压互感器,用于站控层接口LD" lnClass="TVTR">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="CN_LPL"/>
			<DO name="Vol" desc="电压采样值" type="CN_SAV"/>
			<DO name="VRtg" desc="一次额定电压" type="CN_ASG_SP"/>
			<DO name="PTFChkEna" desc="PT断线检测投入" type="CN_SPG_SG_EX"/>
		</LNodeType>
		<LNodeType id="GDNR_V3_PTOC_NSR-3613A-N" desc="过流保护(变压器)" lnClass="PTOC">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="CN_LPL"/>
			<DO name="Str" desc="启动" type="CN_ACD"/>
			<DO name="Op" desc="动作" type="CN_ACT_3P"/>
			<DO name="StrVal" desc="动作定值" type="CN_ASG_SG"/>
			<DO name="OpDlTmms" desc="时间定值" type="CN_ING_SG"/>
			<DO name="Enable" desc="投入" type="CN_SPG_SG_EX"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_MMXU_NSR-3613A-N" desc="测量" lnClass="MMXU">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="CN_LPL"/>
			<DO name="TotW" desc="总有功" type="CN_MV"/>
			<DO name="TotVAr" desc="总无功" type="CN_MV"/>
			<DO name="TotPF" desc="功率因数" type="CN_MV"/>
			<DO name="Hz" desc="频率" type="CN_MV"/>
			<DO name="PPV" desc="线电压" type="CN_DEL"/>
			<DO name="PhV" desc="相电压" type="CN_WYE_ALL"/>
			<DO name="A" desc="电流" type="CN_WYE_ALL"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_MSQI_NSR-3613A-N" desc="序分量" lnClass="MSQI">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="SeqA" desc="电流序分量(S1,S2,S0)" type="GDNR_NSR_V1_SEQ"/>
			<DO name="SeqV" desc="电压序分量(S1,S2,S0)" type="GDNR_NSR_V1_SEQ"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_BASIC_PTRC_NSR-3613A-N" desc="保护跳闸出口(不分相)" lnClass="PTRC">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="Tr" desc="跳闸" type="CN_ACT"/>
			<DO name="Op" desc="动作" type="CN_ACT"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_ALM32_GGIO_NSR-3613A-N" desc="32告警" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="性能" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="Alm1" desc="告警1" type="CN_SPS"/>
			<DO name="Alm2" desc="告警2" type="CN_SPS"/>
			<DO name="Alm3" desc="告警3" type="CN_SPS"/>
			<DO name="Alm4" desc="告警4" type="CN_SPS"/>
			<DO name="Alm5" desc="告警5" type="CN_SPS"/>
			<DO name="Alm6" desc="告警6" type="CN_SPS"/>
			<DO name="Alm7" desc="告警7" type="CN_SPS"/>
			<DO name="Alm8" desc="告警8" type="CN_SPS"/>
			<DO name="Alm9" desc="告警9" type="CN_SPS"/>
			<DO name="Alm10" desc="告警10" type="CN_SPS"/>
			<DO name="Alm11" desc="告警11" type="CN_SPS"/>
			<DO name="Alm12" desc="告警12" type="CN_SPS"/>
			<DO name="Alm13" desc="告警13" type="CN_SPS"/>
		</LNodeType>
		<LNodeType id="GDNR_V2_RFLO_NSR-3613A-N" desc="故障信息" lnClass="RFLO">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="FltZ" desc="故障阻抗" type="CN_CMV"/>
			<DO name="FltDiskm" desc="故障距离(单位km)" type="CN_MV"/>
			<DO name="FltAPhA" desc="A相故障电流" type="CN_MV_EX"/>
			<DO name="FltAPhB" desc="B相故障电流" type="CN_MV_EX"/>
			<DO name="FltAPhC" desc="C相故障电流" type="CN_MV_EX"/>
			<DO name="FltExtA0" desc="外接零序故障电流" type="CN_MV_EX"/>
		</LNodeType>
		<LNodeType id="GDNR_V2_LLN0_NSR-3613A-N" desc="LLN0" lnClass="LLN0">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="CN_LPL_LN0"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_MMXN_NSR-3613A-N" desc="相别值无关测量" lnClass="MMXN">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="Vol" desc="进线电压" type="CN_MV"/>
			<DO name="Hz" desc="频率" type="CN_MV"/>
		</LNodeType>
		<LNodeType id="GDNR_V2_RSYN_NSR-3613A-N" desc="运维同期检查" lnClass="RSYN">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="DifVClc" desc="压差测量值" type="CN_MV"/>
			<DO name="DifHzClc" desc="频差测量值" type="CN_MV"/>
			<DO name="DifAngClc" desc="角差测量值" type="CN_MV"/>
			<DO name="Rel" desc="同期条件满足" type="CN_SPS"/>
			<DO name="SynVolMod" desc="同期电压基准" type="CSG_ING_SP_EX"/>
			<DO name="PhaVLinRtgSnd" desc="线路测额定二次相电压" type="CN_ASG_SP_EX"/>
			<DO name="PhaVBusRtgSnd" desc="母线测额定二次相电压" type="CN_ASG_SP_EX"/>
			<DO name="ChkLivPct" desc="有压定值（%）" type="CN_ASG_SP_EX"/>
			<DO name="ChkDeaPct" desc="无压定值（%）" type="CN_ASG_SP_EX"/>
			<DO name="RteHz" desc="滑差定值" type="CN_ASG_SP_EX"/>
			<DO name="DifHz" desc="频差定值" type="CN_ASG_SP"/>
			<DO name="DifV" desc="压差定值" type="CN_ASG_SP"/>
			<DO name="DifAng" desc="角差定值" type="CN_ASG_SP"/>
			<DO name="BkrTmms" desc="断路器合闸时间" type="CSG_ING_SP_EX"/>
			<DO name="SynCatmms" desc="同期捕捉时间" type="CSG_ING_SP_EX"/>
			<DO name="PTFBlk" desc="PT断线闭锁" type="CN_SPG_SP_EX"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_METR_LLN0_NSR-3613A-N" desc="计量用逻辑节点0" lnClass="LLN0">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="CN_LPL_LN0"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_LPHD_NSR-3613A-N" desc="物理设备逻辑节点,适用于站控层接口LD" lnClass="LPHD">
			<DO name="PhyNam" desc="物理装置铭牌" type="CN_DPL"/>
			<DO name="PhyHealth" desc="物理装置健康状况" type="CN_INS_Health"/>
			<DO name="Proxy" desc="该逻辑节点是否为代理" type="CN_SPS"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_METR_MMTR_NSR-3613A-N" desc="电量/需量计量逻辑节点" lnClass="MMTR">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="FwdWh" desc="正向有功总电能" type="GDNR_NSR_V1_BCR_EX"/>
			<DO name="BwdWh" desc="反向有功总电能" type="GDNR_NSR_V1_BCR_EX"/>
			<DO name="FwdVAh" desc="正向无功总电能" type="GDNR_NSR_V1_BCR_EX"/>
			<DO name="BwdVAh" desc="反向无功总电能" type="GDNR_NSR_V1_BCR_EX"/>
			<DO name="Q1VArh" desc="第一象限无功总电能" type="GDNR_NSR_V1_BCR_EX"/>
			<DO name="Q2Varh" desc="第二象限无功总电能" type="GDNR_NSR_V1_BCR_EX"/>
			<DO name="Q3Varh" desc="第三象限无功总电能" type="GDNR_NSR_V1_BCR_EX"/>
			<DO name="Q4Varh" desc="第四象限无功总电能" type="GDNR_NSR_V1_BCR_EX"/>
		</LNodeType>
		<LNodeType id="GDNR_V3_LLN0_NSR-3613A-N" desc="LLN0" lnClass="LLN0">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="CN_LPL_LN0"/>
			<DO name="SetInfProc" desc="解析定值文件" type="GDNR_NSR_V1_DC_SPC"/>
			<DO name="SetInfMade" desc="生成定值文件" type="GDNR_NSR_V1_DC_SPC"/>
			<DO name="StaInfMade" desc="生成状态文件" type="GDNR_NSR_V1_DC_SPC"/>
			<DO name="AlmInfMade" desc="生成动态告警文件" type="GDNR_NSR_V1_DC_SPC"/>
			<DO name="SetProcSuc" desc="定值文件解析成功" type="CN_SPS_EX"/>
			<DO name="SetProcFal" desc="定值文件解析失败" type="CN_SPS_EX"/>
			<DO name="SetMadeSuc" desc="定值文件生成成功" type="CN_SPS_EX"/>
			<DO name="SetMadeFal" desc="定值文件生成失败" type="CN_SPS_EX"/>
			<DO name="DevProcSuc" desc="档案文件更新成功" type="CN_SPS_EX"/>
			<DO name="DevProcFal" desc="档案文件更新失败" type="CN_SPS_EX"/>
			<DO name="StaMadeSuc" desc="状态文件生成成功" type="CN_SPS_EX"/>
			<DO name="StaMadeFal" desc="状态文件生成失败" type="CN_SPS_EX"/>
			<DO name="AlmMadeSuc" desc="动态告警文件生成成功" type="CN_SPS_EX"/>
			<DO name="AlmMadeFal" desc="动态告警文件生成失败" type="CN_SPS_EX"/>
			<DO name="CurStGrp" desc="当前定值运行区号" type="GDNR_NSR_V1_MV_EX"/>
		</LNodeType>
		<LNodeType id="GDNR_V3_LPHD_NSR-3613A-N" desc="物理装置信息,适用于过程层接口LD" lnClass="LPHD">
			<DO name="PhyNam" desc="物理装置铭牌" type="CN_DPL"/>
			<DO name="PhyHealth" desc="物理装置健康状况" type="CN_INS_Health"/>
			<DO name="Proxy" desc="是否为代理" type="CN_SPS"/>
			<DO name="SASPinCrc" desc="全站过程层虚端子配置CRC版本" type="CN_STG_SP_EX"/>
			<DO name="IEDPinCrc" desc="IED过程层虚端子配置CRC版本" type="CN_STG_SP_EX"/>
			<DO name="IEDPinTime" desc="保护装置CCD文件生成时间" type="CN_STG_SP_EX"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_LTSM_NSR-3613A-N" desc="间隔层/站控层被授时设备自检状态" lnClass="LTSM">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL_EX"/>
			<DO name="HostTPortAlarm" desc="对时信号状态" type="CN_SPS"/>
			<DO name="HostTSrvAlarm" desc="对时服务状态" type="CN_SPS"/>
			<DO name="HostContAlarm" desc="时间跳变侦测状态" type="CN_SPS"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_STMP_NSR-3613A-N" desc="二次设备温度监测" lnClass="STMP">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="CN_LPL_EX"/>
			<DO name="Tmp" desc="温度" type="CN_MV"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_SPVT_NSR-3613A-N" desc="二次设备电源电压监测" lnClass="SPVT">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="CN_LPL_EX"/>
			<DO name="Vol" desc="电压" type="CN_MV_EX"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_EVE_GGIO_NSR-3613A-N" desc="一般事件" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="Alm1" desc="事件1" type="CN_SPS"/>
			<DO name="Alm2" desc="事件2" type="CN_SPS"/>
			<DO name="Alm3" desc="事件3" type="CN_SPS"/>
			<DO name="Alm4" desc="事件4" type="CN_SPS"/>
			<DO name="Alm5" desc="事件5" type="CN_SPS"/>
			<DO name="Alm6" desc="事件6" type="CN_SPS"/>
			<DO name="Alm7" desc="事件7" type="CN_SPS"/>
			<DO name="Alm8" desc="事件8" type="CN_SPS"/>
			<DO name="Alm9" desc="事件9" type="CN_SPS"/>
			<DO name="Alm10" desc="事件10" type="CN_SPS"/>
			<DO name="Alm11" desc="事件11" type="CN_SPS"/>
			<DO name="Alm12" desc="事件12" type="CN_SPS"/>
			<DO name="Alm13" desc="事件13" type="CN_SPS"/>
			<DO name="Alm14" desc="事件14" type="CN_SPS"/>
			<DO name="Alm15" desc="事件15" type="CN_SPS"/>
			<DO name="Alm16" desc="事件16" type="CN_SPS"/>
			<DO name="Alm17" desc="事件17" type="CN_SPS"/>
			<DO name="Alm18" desc="事件18" type="CN_SPS"/>
			<DO name="Alm19" desc="事件19" type="CN_SPS"/>
			<DO name="Alm20" desc="事件20" type="CN_SPS"/>
			<DO name="Alm21" desc="事件21" type="CN_SPS"/>
			<DO name="Alm22" desc="事件22" type="CN_SPS"/>
			<DO name="Alm23" desc="事件23" type="CN_SPS"/>
			<DO name="Alm24" desc="事件24" type="CN_SPS"/>
			<DO name="Alm25" desc="事件25" type="CN_SPS"/>
			<DO name="Alm26" desc="事件26" type="CN_SPS"/>
			<DO name="Alm27" desc="事件27" type="CN_SPS"/>
			<DO name="Alm28" desc="事件28" type="CN_SPS"/>
			<DO name="Alm29" desc="事件29" type="CN_SPS"/>
			<DO name="Alm30" desc="事件30" type="CN_SPS"/>
			<DO name="Alm31" desc="事件31" type="CN_SPS"/>
			<DO name="Alm32" desc="事件32" type="CN_SPS"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_IP_GGIO_NSR-3613A-N" desc="IP参数配置" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="NetAIp" desc="A网IP" type="CN_STG_SP_EX"/>
			<DO name="NetBIp" desc="B网IP" type="CN_STG_SP_EX"/>
			<DO name="NetCIp" desc="C网IP" type="CN_STG_SP_EX"/>
			<DO name="ClientIp1" desc="客户端IP" type="CN_STG_SP_EX"/>
			<DO name="ClientIp2" desc="客户端IP" type="CN_STG_SP_EX"/>
			<DO name="ClientIp3" desc="客户端IP" type="CN_STG_SP_EX"/>
			<DO name="ClientIp4" desc="客户端IP" type="CN_STG_SP_EX"/>
			<DO name="ClientIp5" desc="客户端IP" type="CN_STG_SP_EX"/>
			<DO name="ClientIp6" desc="客户端IP" type="CN_STG_SP_EX"/>
			<DO name="ClientIp7" desc="客户端IP" type="CN_STG_SP_EX"/>
			<DO name="ClientIp8" desc="客户端IP" type="CN_STG_SP_EX"/>
			<DO name="ClientIp9" desc="客户端IP" type="CN_STG_SP_EX"/>
			<DO name="ClientIp10" desc="客户端IP" type="CN_STG_SP_EX"/>
			<DO name="ClientIp11" desc="客户端IP" type="CN_STG_SP_EX"/>
			<DO name="ClientIp12" desc="客户端IP" type="CN_STG_SP_EX"/>
			<DO name="ClientIp13" desc="客户端IP" type="CN_STG_SP_EX"/>
			<DO name="ClientIp14" desc="客户端IP" type="CN_STG_SP_EX"/>
			<DO name="ClientIp15" desc="客户端IP" type="CN_STG_SP_EX"/>
			<DO name="ClientIp16" desc="客户端IP" type="CN_STG_SP_EX"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_SCLI_NSR-3613A-N" desc="二次设备光强监测" lnClass="SCLI">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="CN_LPL_EX"/>
			<DO name="LigIntes" desc="光强" type="CN_MV_EX"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_ALM8_GGIO_NSR-3613A-N" desc="8告警" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="Alm1" desc="告警1" type="CN_SPS"/>
			<DO name="Alm2" desc="告警2" type="CN_SPS"/>
			<DO name="Alm3" desc="告警3" type="CN_SPS"/>
			<DO name="Alm4" desc="告警4" type="CN_SPS"/>
			<DO name="Alm5" desc="告警5" type="CN_SPS"/>
			<DO name="Alm6" desc="告警6" type="CN_SPS"/>
			<DO name="Alm7" desc="告警7" type="CN_SPS"/>
			<DO name="Alm8" desc="告警8" type="CN_SPS"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_TIME_GGIO_NSR-3613A-N" desc="对时方式" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="VrifTmMod" desc="对时方式" type="CN_ING_SP_EX"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_YXPara_GGIO_NSR-3613A-N" desc="遥信防抖控制逻辑节点,南网增加" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="YXHoldTmms1" desc="遥信1滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms2" desc="遥信2滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms3" desc="遥信3滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms4" desc="遥信4滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms5" desc="遥信5滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms6" desc="遥信6滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms7" desc="遥信7滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms8" desc="遥信8滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms9" desc="遥信9滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms10" desc="遥信10滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms11" desc="遥信11滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms12" desc="遥信12滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms13" desc="遥信13滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms14" desc="遥信14滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms15" desc="遥信15滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms16" desc="遥信16滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms17" desc="遥信17滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms18" desc="遥信18滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms19" desc="遥信19滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms20" desc="遥信20滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms21" desc="遥信21滤波防抖时间" type="CSG_ING_SP_EX"/>
			<DO name="YXHoldTmms22" desc="遥信22滤波防抖时间" type="CSG_ING_SP_EX"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_CtrlPara_GGIO_NSR-3613A-N" desc="遥控脉宽逻辑节点,南网" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="CtrlOPTmms1" desc="对象1分出口脉宽" type="CSG_ING_SP_EX"/>
			<DO name="CtrlCPTmms1" desc="对象1合出口脉宽" type="CSG_ING_SP_EX"/>
			<DO name="CtrlOPTmms2" desc="对象2分出口脉宽" type="CSG_ING_SP_EX"/>
			<DO name="CtrlCPTmms2" desc="对象2合出口脉宽" type="CSG_ING_SP_EX"/>
			<DO name="CtrlOPTmms3" desc="对象3分出口脉宽" type="CSG_ING_SP_EX"/>
			<DO name="CtrlCPTmms3" desc="对象3合出口脉宽" type="CSG_ING_SP_EX"/>
			<DO name="CtrlOPTmms4" desc="对象4分出口脉宽" type="CSG_ING_SP_EX"/>
			<DO name="CtrlCPTmms4" desc="对象4合出口脉宽" type="CSG_ING_SP_EX"/>
			<DO name="CtrlOPTmms5" desc="对象5分出口脉宽" type="CSG_ING_SP_EX"/>
			<DO name="CtrlCPTmms5" desc="对象5合出口脉宽" type="CSG_ING_SP_EX"/>
			<DO name="CtrlOPTmms6" desc="对象6分出口脉宽" type="CSG_ING_SP_EX"/>
			<DO name="CtrlCPTmms6" desc="对象6合出口脉宽" type="CSG_ING_SP_EX"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_YCPara_GGIO_NSR-3613A-N" desc="遥测参数，南网" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="BusVRtgPri" desc="母线侧额定一次电压" type="CN_ASG_SP_EX"/>
			<DO name="BusVRtgSnd" desc="母线侧额定二次电压" type="CN_ASG_SP_EX"/>
			<DO name="BusARtgPri" desc="母线侧额定一次电流" type="CN_ASG_SP_EX"/>
			<DO name="BusARtgSnd" desc="母线侧额定二次电流" type="CN_ASG_SP_EX"/>
			<DO name="LinVRtgPri" desc="线路侧额定一次电压" type="CN_ASG_SP_EX"/>
			<DO name="LinVRtgSnd" desc="线路侧额定二次电压" type="CN_ASG_SP_EX"/>
			<DO name="Teldb" desc="遥测死区（电压电流功率死区）" type="CN_ASG_SP_EX"/>
			<DO name="Frdb" desc="频率变化死区" type="CN_ASG_SP_EX"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_RDRE_NSR-3613A-N" desc="扰动记录" lnClass="RDRE">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="CN_LPL"/>
			<DO name="RcdMade" desc="装置录波状态" type="CN_SPS"/>
			<DO name="FltNum" desc="录波文件序号" type="CN_INS"/>
		</LNodeType>
		<LNodeType id="GDNR_V1_XCBR_NSR-3613A-N" desc="断路器" lnClass="XCBR">
			<DO name="Mod" desc="模式" type="CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="CN_LPL"/>
			<DO name="Loc" desc="本地操作" type="CN_SPS"/>
			<DO name="OpCnt" desc="操作次数" type="CN_INS"/>
			<DO name="Pos" desc="开关位置" type="CN_DPC"/>
			<DO name="BlkOpn" desc="跳闸闭锁" type="CN_SPC"/>
			<DO name="BlkCls" desc="合闸闭锁" type="CN_SPC"/>
			<DO name="CBOpCap" desc="断路器操作能力" type="CN_INS_CBOpCap"/>
		</LNodeType>
		<DOType id="CN_INC_Mod" cdc="INC">
			<DA name="stVal" bType="Enum" type="Mod" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="ctlModel" bType="Enum" type="ctlModel" fc="CF">
				<Val>status-only</Val>
			</DA>
		</DOType>
		<DOType id="CN_INS_Beh" cdc="INS">
			<DA name="stVal" bType="Enum" type="Beh" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="CN_INS_Health" cdc="INS">
			<DA name="stVal" bType="Enum" type="Health" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="CN_LPL_LN0" cdc="LPL">
			<DA name="vendor" bType="VisString255" fc="DC"/>
			<DA name="swRev" bType="VisString255" fc="DC"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="configRev" bType="VisString255" fc="DC"/>
			<DA name="ldNs" bType="VisString255" fc="EX">
				<Val>IEC 61850-7-4:2003</Val>
			</DA>
		</DOType>
		<DOType id="CN_DPL" cdc="DPL">
			<DA name="vendor" bType="VisString255" fc="DC"/>
			<DA name="hwRev" bType="VisString255" fc="DC"/>
			<DA name="swRev" bType="VisString255" fc="DC"/>
			<DA name="serNum" bType="VisString255" fc="DC"/>
			<DA name="model" bType="VisString255" fc="DC"/>
			<DA name="location" bType="VisString255" fc="DC"/>
		</DOType>
		<DOType id="CN_SPS" cdc="SPS">
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="BOOLEAN" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="CN_LPL" cdc="LPL">
			<DA name="vendor" bType="VisString255" fc="DC"/>
			<DA name="swRev" bType="VisString255" fc="DC"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="CN_DPC" cdc="DPC">
			<DA name="SBOw" bType="Struct" type="CN_SBOw_Oper_SDPC" fc="CO"/>
			<DA name="Oper" bType="Struct" type="CN_SBOw_Oper_SDPC" fc="CO"/>
			<DA name="Cancel" bType="Struct" type="CN_Cancel_SDPC" fc="CO"/>
			<DA name="stVal" bType="Dbpos" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="Dbpos" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="pulseConfig" bType="Struct" type="CN_PulseConfig" fc="CF"/>
			<DA name="ctlModel" bType="Enum" type="ctlModel" fc="CF"/>
			<DA name="sboTimeout" bType="INT32U" fc="CF"/>
			<DA name="sboClass" bType="Enum" type="sboClass" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="CN_ACT" cdc="ACT">
			<DA name="general" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="CN_SPC_DC" cdc="SPC">
			<DA name="Oper" bType="Struct" type="CN_SBOw_Oper_SDPC" fc="CO"/>
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="BOOLEAN" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="pulseConfig" bType="Struct" type="CN_PulseConfig" fc="CF"/>
			<DA name="ctlModel" bType="Enum" type="ctlModel" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="CN_ACD" cdc="ACD">
			<DA name="general" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirGeneral" bType="Enum" type="dir" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="CN_MV_EX" cdc="MV">
			<DA name="mag" bType="Struct" type="CN_AnalogueValue" dchg="true" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subMag" bType="Struct" type="CN_AnalogueValue" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="units" bType="Struct" type="CN_units" fc="CF"/>
			<DA name="db" bType="INT32U" fc="CF"/>
			<DA name="zeroDb" bType="INT32U" fc="CF"/>
			<DA name="sVC" bType="Struct" type="CN_ScaledValueConfig" fc="CF"/>
			<DA name="rangeC" bType="Struct" type="CN_RangeConfig" fc="CF"/>
			<DA name="smpRate" bType="INT32U" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>CN MODEL:2016</Val>
			</DA>
		</DOType>
		<DOType id="GDNR_NSR_V1_DPC" cdc="DPC">
			<DA name="stVal" bType="Dbpos" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="Dbpos" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="ctlModel" bType="Enum" type="ctlModel" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="CN_SPC" cdc="SPC">
			<DA name="SBOw" bType="Struct" type="CN_SBOw_Oper_SDPC" fc="CO"/>
			<DA name="Oper" bType="Struct" type="CN_SBOw_Oper_SDPC" fc="CO"/>
			<DA name="Cancel" bType="Struct" type="CN_Cancel_SDPC" fc="CO"/>
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="BOOLEAN" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="pulseConfig" bType="Struct" type="CN_PulseConfig" fc="CF"/>
			<DA name="ctlModel" bType="Enum" type="ctlModel" fc="CF"/>
			<DA name="sboTimeout" bType="INT32U" fc="CF"/>
			<DA name="sboClass" bType="Enum" type="sboClass" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="CN_MV" cdc="MV">
			<DA name="mag" bType="Struct" type="CN_AnalogueValue" dchg="true" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subMag" bType="Struct" type="CN_AnalogueValue" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="units" bType="Struct" type="CN_units" fc="CF"/>
			<DA name="db" bType="INT32U" fc="CF"/>
			<DA name="zeroDb" bType="INT32U" fc="CF"/>
			<DA name="sVC" bType="Struct" type="CN_ScaledValueConfig" fc="CF"/>
			<DA name="rangeC" bType="Struct" type="CN_RangeConfig" fc="CF"/>
			<DA name="smpRate" bType="INT32U" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="CN_ING_SP_EX" cdc="ING">
			<DA name="setVal" bType="INT32" fc="SP"/>
			<DA name="minVal" bType="INT32" fc="CF"/>
			<DA name="maxVal" bType="INT32" fc="CF"/>
			<DA name="stepSize" bType="INT32U" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>CN MODEL:2016</Val>
			</DA>
		</DOType>
		<DOType id="CN_STG_SP_EX" cdc="STG">
			<DA name="setVal" bType="Unicode255" fc="SP"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX">
				<Val>CN MODEL:2016</Val>
			</DA>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>CN MODEL:2016</Val>
			</DA>
		</DOType>
		<DOType id="CN_ASG_SP_EX" cdc="ASG">
			<DA name="setMag" bType="Struct" type="CN_AnalogueValue" fc="SP"/>
			<DA name="units" bType="Struct" type="CN_units" fc="CF"/>
			<DA name="sVC" bType="Struct" type="CN_ScaledValueConfig" fc="CF"/>
			<DA name="minVal" bType="Struct" type="CN_AnalogueValue" fc="CF"/>
			<DA name="maxVal" bType="Struct" type="CN_AnalogueValue" fc="CF"/>
			<DA name="stepSize" bType="Struct" type="CN_AnalogueValue" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>CN MODEL:2016</Val>
			</DA>
		</DOType>
		<DOType id="CN_SPS_EX" cdc="SPS">
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="BOOLEAN" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>CN MODEL:2016</Val>
			</DA>
		</DOType>
		<DOType id="GDNR_NSR_V1_MV_EX" cdc="MV">
			<DA name="mag" bType="Struct" type="CN_AnalogueValue_I" dchg="true" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="units" bType="Struct" type="CN_units" fc="CF"/>
			<DA name="db" bType="INT32U" fc="CF"/>
			<DA name="zeroDb" bType="INT32U" fc="CF"/>
			<DA name="sVC" bType="Struct" type="CN_ScaledValueConfig" fc="CF"/>
			<DA name="rangeC" bType="Struct" type="CN_RangeConfig" fc="CF"/>
			<DA name="smpRate" bType="INT32U" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>GDNR_MODEL:2010</Val>
			</DA>
		</DOType>
		<DOType id="CN_INS" cdc="INS">
			<DA name="stVal" bType="INT32" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="INT32" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="CN_SAV" cdc="SAV">
			<DA name="instMag" bType="Struct" type="CN_AnalogueValue_I" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="units" bType="Struct" type="CN_units" fc="CF"/>
			<DA name="sVC" bType="Struct" type="CN_ScaledValueConfig" fc="CF"/>
			<DA name="min" bType="Struct" type="CN_AnalogueValue_I" fc="CF"/>
			<DA name="max" bType="Struct" type="CN_AnalogueValue_I" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="CN_ASG_SP" cdc="ASG">
			<DA name="setMag" bType="Struct" type="CN_AnalogueValue" fc="SP"/>
			<DA name="units" bType="Struct" type="CN_units" fc="CF"/>
			<DA name="sVC" bType="Struct" type="CN_ScaledValueConfig" fc="CF"/>
			<DA name="minVal" bType="Struct" type="CN_AnalogueValue" fc="CF"/>
			<DA name="maxVal" bType="Struct" type="CN_AnalogueValue" fc="CF"/>
			<DA name="stepSize" bType="Struct" type="CN_AnalogueValue" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="CN_SPG_SG_EX" cdc="SPG">
			<DA name="setVal" bType="BOOLEAN" fc="SG"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>CN MODEL:2016</Val>
			</DA>
		</DOType>
		<DOType id="CN_ACT_3P" cdc="ACT">
			<DA name="general" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsA" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsB" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsC" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="neut" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="CN_ASG_SG" cdc="ASG">
			<DA name="setMag" bType="Struct" type="CN_AnalogueValue" fc="SG"/>
			<DA name="units" bType="Struct" type="CN_units" fc="CF"/>
			<DA name="sVC" bType="Struct" type="CN_ScaledValueConfig" fc="CF"/>
			<DA name="minVal" bType="Struct" type="CN_AnalogueValue" fc="CF"/>
			<DA name="maxVal" bType="Struct" type="CN_AnalogueValue" fc="CF"/>
			<DA name="stepSize" bType="Struct" type="CN_AnalogueValue" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="CN_ING_SG" cdc="ING">
			<DA name="setVal" bType="INT32" fc="SG"/>
			<DA name="minVal" bType="INT32" fc="CF"/>
			<DA name="maxVal" bType="INT32" fc="CF"/>
			<DA name="stepSize" bType="INT32U" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="CN_DEL" cdc="DEL">
			<SDO name="phsAB" type="CN_CMV"/>
			<SDO name="phsBC" type="CN_CMV"/>
			<SDO name="phsCA" type="CN_CMV"/>
			<DA name="angRef" bType="Enum" type="angid" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="CN_CMV" cdc="CMV">
			<DA name="cVal" bType="Struct" type="CN_Vector" dchg="true" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subCVal" bType="Struct" type="CN_Vector" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="units" bType="Struct" type="CN_units" fc="CF"/>
			<DA name="db" bType="INT32U" fc="CF"/>
			<DA name="zeroDb" bType="INT32U" fc="CF"/>
			<DA name="rangeC" bType="Struct" type="CN_RangeConfig" fc="CF"/>
			<DA name="magSVC" bType="Struct" type="CN_ScaledValueConfig" fc="CF"/>
			<DA name="angSVC" bType="Struct" type="CN_ScaledValueConfig" fc="CF"/>
			<DA name="angRef" bType="Enum" type="angidCMV" fc="CF"/>
			<DA name="smpRate" bType="INT32U" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="CN_WYE_ALL" cdc="WYE">
			<SDO name="phsA" type="CN_CMV"/>
			<SDO name="phsB" type="CN_CMV"/>
			<SDO name="phsC" type="CN_CMV"/>
			<SDO name="neut" type="CN_CMV"/>
			<SDO name="net" type="CN_CMV"/>
			<SDO name="res" type="CN_CMV"/>
			<DA name="angRef" bType="Enum" type="angid" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="GDNR_NSR_V1_SEQ" cdc="SEQ">
			<SDO name="c1" type="CN_CMV"/>
			<SDO name="c2" type="CN_CMV"/>
			<SDO name="c3" type="CN_CMV"/>
			<DA name="seqT" bType="Enum" type="seqT" fc="MX"/>
			<DA name="phsRef" bType="Enum" type="phsid" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="CSG_ING_SP_EX" cdc="ING">
			<DA name="setVal" bType="INT32" fc="SP"/>
			<DA name="minVal" bType="INT32" fc="CF"/>
			<DA name="maxVal" bType="INT32" fc="CF"/>
			<DA name="units" bType="Struct" type="CN_units" fc="CF"/>
			<DA name="stepSize" bType="INT32U" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX">
				<Val>GDNR_MODEL:2016</Val>
			</DA>
			<DA name="cdcName" bType="VisString255" fc="EX">
				<Val>CSG_ING_SP_EX</Val>
			</DA>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>GDNR_MODEL:2016</Val>
			</DA>
		</DOType>
		<DOType id="CN_SPG_SP_EX" cdc="SPG">
			<DA name="setVal" bType="BOOLEAN" fc="SP"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>CN MODEL:2016</Val>
			</DA>
		</DOType>
		<DOType id="GDNR_NSR_V1_BCR_EX" cdc="BCR">
			<DA name="actVal" bType="INT32" dchg="true" fc="ST"/>
			<DA name="frVal" bType="INT32" dupd="true" fc="ST"/>
			<DA name="frTm" bType="Timestamp" dupd="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="units" bType="Struct" type="CN_units" fc="CF"/>
			<DA name="pulsQty" bType="FLOAT32" fc="CF"/>
			<DA name="frEna" bType="BOOLEAN" fc="CF"/>
			<DA name="strTm" bType="Timestamp" fc="CF"/>
			<DA name="frPd" bType="INT32" fc="CF"/>
			<DA name="frRs" bType="BOOLEAN" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>GDNR_MODEL:2010</Val>
			</DA>
		</DOType>
		<DOType id="GDNR_NSR_V1_DC_SPC" cdc="SPC">
			<DA name="Oper" bType="Struct" type="CN_SBOw_Oper_SDPC" fc="CO"/>
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="BOOLEAN" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="pulseConfig" bType="Struct" type="CN_PulseConfig" fc="CF"/>
			<DA name="ctlModel" bType="Enum" type="ctlModel" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>CN MODEL:2016</Val>
			</DA>
		</DOType>
		<DOType id="CN_LPL_EX" cdc="LPL">
			<DA name="vendor" bType="VisString255" fc="DC"/>
			<DA name="swRev" bType="VisString255" fc="DC"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="lnNs" bType="VisString255" fc="EX">
				<Val>CN MODEL:2016</Val>
			</DA>
		</DOType>
		<DOType id="CN_INS_CBOpCap" cdc="INS">
			<DA name="stVal" bType="Enum" type="CBOpCap" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="Enum" type="CBOpCap" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DAType id="CN_SBOw_Oper_SDPC">
			<BDA name="ctlVal" bType="BOOLEAN"/>
			<BDA name="origin" bType="Struct" type="CN_Originator"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<BDA name="Check" bType="Check"/>
		</DAType>
		<DAType id="CN_Originator">
			<BDA name="orCat" bType="Enum" type="orCategory"/>
			<BDA name="orIdent" bType="Octet64"/>
		</DAType>
		<DAType id="CN_Cancel_SDPC">
			<BDA name="ctlVal" bType="BOOLEAN"/>
			<BDA name="origin" bType="Struct" type="CN_Originator"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
		</DAType>
		<DAType id="CN_PulseConfig">
			<BDA name="cmdQual" bType="Enum" type="PulseConfigCmdQual"/>
			<BDA name="onDur" bType="INT32U"/>
			<BDA name="offDur" bType="INT32U"/>
			<BDA name="numPls" bType="INT32U"/>
		</DAType>
		<DAType id="CN_AnalogueValue">
			<BDA name="f" bType="FLOAT32"/>
		</DAType>
		<DAType id="CN_units">
			<BDA name="SIUnit" bType="Enum" type="SIUnit"/>
			<BDA name="multiplier" bType="Enum" type="multiplier"/>
		</DAType>
		<DAType id="CN_ScaledValueConfig">
			<BDA name="scaleFactor" bType="FLOAT32"/>
			<BDA name="offset" bType="FLOAT32"/>
		</DAType>
		<DAType id="CN_RangeConfig">
			<BDA name="hhLim" bType="Struct" type="CN_AnalogueValue"/>
			<BDA name="hLim" bType="Struct" type="CN_AnalogueValue"/>
			<BDA name="lLim" bType="Struct" type="CN_AnalogueValue"/>
			<BDA name="llLim" bType="Struct" type="CN_AnalogueValue"/>
			<BDA name="min" bType="Struct" type="CN_AnalogueValue"/>
			<BDA name="max" bType="Struct" type="CN_AnalogueValue"/>
		</DAType>
		<DAType id="CN_AnalogueValue_I">
			<BDA name="i" bType="INT32"/>
		</DAType>
		<DAType id="CN_Vector">
			<BDA name="mag" bType="Struct" type="CN_AnalogueValue"/>
			<BDA name="ang" bType="Struct" type="CN_AnalogueValue"/>
		</DAType>
		<EnumType id="Mod">
			<EnumVal ord="1">on</EnumVal>
			<EnumVal ord="2">blocked</EnumVal>
			<EnumVal ord="3">test</EnumVal>
			<EnumVal ord="4">test/blocked</EnumVal>
			<EnumVal ord="5">off</EnumVal>
		</EnumType>
		<EnumType id="ctlModel">
			<EnumVal ord="0">status-only</EnumVal>
			<EnumVal ord="1">direct-with-normal-security</EnumVal>
			<EnumVal ord="2">sbo-with-normal-security</EnumVal>
			<EnumVal ord="3">direct-with-enhanced-security</EnumVal>
			<EnumVal ord="4">sbo-with-enhanced-security</EnumVal>
		</EnumType>
		<EnumType id="Beh">
			<EnumVal ord="1">on</EnumVal>
			<EnumVal ord="2">blocked</EnumVal>
			<EnumVal ord="3">test</EnumVal>
			<EnumVal ord="4">test/blocked</EnumVal>
			<EnumVal ord="5">off</EnumVal>
		</EnumType>
		<EnumType id="Health">
			<EnumVal ord="1">Ok</EnumVal>
			<EnumVal ord="2">Warning</EnumVal>
			<EnumVal ord="3">Alarm</EnumVal>
		</EnumType>
		<EnumType id="orCategory">
			<EnumVal ord="0">not-supported</EnumVal>
			<EnumVal ord="1">bay-control</EnumVal>
			<EnumVal ord="2">station-control</EnumVal>
			<EnumVal ord="3">remote-control</EnumVal>
			<EnumVal ord="4">automatic-bay</EnumVal>
			<EnumVal ord="5">automatic-station</EnumVal>
			<EnumVal ord="6">automatic-remote</EnumVal>
			<EnumVal ord="7">maintenance</EnumVal>
			<EnumVal ord="8">process</EnumVal>
		</EnumType>
		<EnumType id="PulseConfigCmdQual">
			<EnumVal ord="0">pulse</EnumVal>
			<EnumVal ord="1">persistent</EnumVal>
		</EnumType>
		<EnumType id="sboClass">
			<EnumVal ord="0">operate-once</EnumVal>
			<EnumVal ord="1">operate-many</EnumVal>
		</EnumType>
		<EnumType id="dir">
			<EnumVal ord="0">unknown</EnumVal>
			<EnumVal ord="1">forward</EnumVal>
			<EnumVal ord="2">backward</EnumVal>
			<EnumVal ord="3">both</EnumVal>
		</EnumType>
		<EnumType id="SIUnit">
			<EnumVal ord="-101">hour</EnumVal>
			<EnumVal ord="-100">min</EnumVal>
			<EnumVal ord="1"/>
			<EnumVal ord="2">m</EnumVal>
			<EnumVal ord="3">kg</EnumVal>
			<EnumVal ord="4">s</EnumVal>
			<EnumVal ord="5">A</EnumVal>
			<EnumVal ord="6">K</EnumVal>
			<EnumVal ord="7">mol</EnumVal>
			<EnumVal ord="8">cd</EnumVal>
			<EnumVal ord="9">deg</EnumVal>
			<EnumVal ord="10">rad</EnumVal>
			<EnumVal ord="11">sr</EnumVal>
			<EnumVal ord="21">Gy</EnumVal>
			<EnumVal ord="22">q</EnumVal>
			<EnumVal ord="23">°C</EnumVal>
			<EnumVal ord="24">Sv</EnumVal>
			<EnumVal ord="25">F</EnumVal>
			<EnumVal ord="26">C</EnumVal>
			<EnumVal ord="27">S</EnumVal>
			<EnumVal ord="28">H</EnumVal>
			<EnumVal ord="29">V</EnumVal>
			<EnumVal ord="30">ohm</EnumVal>
			<EnumVal ord="31">J</EnumVal>
			<EnumVal ord="32">N</EnumVal>
			<EnumVal ord="33">Hz</EnumVal>
			<EnumVal ord="34">lx</EnumVal>
			<EnumVal ord="35">Lm</EnumVal>
			<EnumVal ord="36">Wb</EnumVal>
			<EnumVal ord="37">T</EnumVal>
			<EnumVal ord="38">W</EnumVal>
			<EnumVal ord="39">Pa</EnumVal>
			<EnumVal ord="41">m²</EnumVal>
			<EnumVal ord="42">m³</EnumVal>
			<EnumVal ord="43">m/s</EnumVal>
			<EnumVal ord="44">m/s²</EnumVal>
			<EnumVal ord="45">m³/s</EnumVal>
			<EnumVal ord="46">m/m³</EnumVal>
			<EnumVal ord="47">M</EnumVal>
			<EnumVal ord="48">kg/m³</EnumVal>
			<EnumVal ord="49">m²/s</EnumVal>
			<EnumVal ord="50">W/m K</EnumVal>
			<EnumVal ord="51">J/K</EnumVal>
			<EnumVal ord="52">ppm</EnumVal>
			<EnumVal ord="53">1/s</EnumVal>
			<EnumVal ord="54">rad/s</EnumVal>
			<EnumVal ord="61">VA</EnumVal>
			<EnumVal ord="62">Watts</EnumVal>
			<EnumVal ord="63">VAr</EnumVal>
			<EnumVal ord="64">phi</EnumVal>
			<EnumVal ord="65">cos(phi)</EnumVal>
			<EnumVal ord="66">Vs</EnumVal>
			<EnumVal ord="67">V²</EnumVal>
			<EnumVal ord="68">As</EnumVal>
			<EnumVal ord="69">A²</EnumVal>
			<EnumVal ord="70">A²t</EnumVal>
			<EnumVal ord="71">VAh</EnumVal>
			<EnumVal ord="72">Wh</EnumVal>
			<EnumVal ord="73">VArh</EnumVal>
			<EnumVal ord="74">V/Hz</EnumVal>
			<EnumVal ord="75">Hz/s</EnumVal>
			<EnumVal ord="76">char</EnumVal>
			<EnumVal ord="77">char/s</EnumVal>
			<EnumVal ord="78">kgm²</EnumVal>
			<EnumVal ord="79">dB</EnumVal>
			<EnumVal ord="80">J/Wh</EnumVal>
			<EnumVal ord="81">W/s</EnumVal>
			<EnumVal ord="82">L/s</EnumVal>
			<EnumVal ord="83">dBm</EnumVal>
		</EnumType>
		<EnumType id="multiplier">
			<EnumVal ord="-24">y</EnumVal>
			<EnumVal ord="-21">z</EnumVal>
			<EnumVal ord="-18">a</EnumVal>
			<EnumVal ord="-15">f</EnumVal>
			<EnumVal ord="-12">p</EnumVal>
			<EnumVal ord="-9">n</EnumVal>
			<EnumVal ord="-6">µ</EnumVal>
			<EnumVal ord="-3">m</EnumVal>
			<EnumVal ord="-2">c</EnumVal>
			<EnumVal ord="-1">d</EnumVal>
			<EnumVal ord="0"/>
			<EnumVal ord="1">da</EnumVal>
			<EnumVal ord="2">h</EnumVal>
			<EnumVal ord="3">k</EnumVal>
			<EnumVal ord="6">M</EnumVal>
			<EnumVal ord="9">G</EnumVal>
			<EnumVal ord="12">T</EnumVal>
			<EnumVal ord="15">P</EnumVal>
			<EnumVal ord="18">E</EnumVal>
			<EnumVal ord="21">Z</EnumVal>
			<EnumVal ord="24">Y</EnumVal>
		</EnumType>
		<EnumType id="angidCMV">
			<EnumVal ord="0">V</EnumVal>
			<EnumVal ord="1">A</EnumVal>
			<EnumVal ord="2">other</EnumVal>
		</EnumType>
		<EnumType id="angid">
			<EnumVal ord="0">Va</EnumVal>
			<EnumVal ord="1">Vb</EnumVal>
			<EnumVal ord="2">Vc</EnumVal>
			<EnumVal ord="3">Aa</EnumVal>
			<EnumVal ord="4">Ab</EnumVal>
			<EnumVal ord="5">Ac</EnumVal>
			<EnumVal ord="6">Vab</EnumVal>
			<EnumVal ord="7">Vbc</EnumVal>
			<EnumVal ord="8">Vca</EnumVal>
			<EnumVal ord="9">Vother</EnumVal>
			<EnumVal ord="10">Aother</EnumVal>
		</EnumType>
		<EnumType id="seqT">
			<EnumVal ord="0">pos-neg-zero</EnumVal>
			<EnumVal ord="1">dir-quad-zero</EnumVal>
		</EnumType>
		<EnumType id="phsid">
			<EnumVal ord="0">A</EnumVal>
			<EnumVal ord="1">B</EnumVal>
			<EnumVal ord="2">C</EnumVal>
		</EnumType>
		<EnumType id="CBOpCap">
			<EnumVal ord="1">None</EnumVal>
			<EnumVal ord="2">Open</EnumVal>
			<EnumVal ord="3">Close-Open</EnumVal>
			<EnumVal ord="4">Open-Close-Open</EnumVal>
			<EnumVal ord="5">Close-Open-Close-Open</EnumVal>
		</EnumType>
	</DataTypeTemplates>
</SCL>
