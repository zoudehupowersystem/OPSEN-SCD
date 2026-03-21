<?xml version="1.0" encoding="UTF-8" ?>
<SCL xmlns="http://www.iec.ch/61850/2003/SCL" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.iec.ch/61850/2003/SCL SCL.xsd" xmlns:ext="http://www.sgepri.sgcc.com.cn" xmlns:IEC_60870_5_104="http://www.sgepri.sgcc.com.cn">
	<Private type="Substation virtual terminal conection CRC">F8DFCC60</Private>
	<Header id="NSR3641" nameStructure="IEDName" version="V1.22" toolID="Config-Cid">
		<History>
			<Hitem version="1.43" revision="1.0" when="2016-11-22 09:45:32" who="" what="" why=""/>
			<Hitem version="1.8" revision="1.0" when="2016-11-22 09:48:18" who="" what="" why=""/>
			<Hitem version="2.0" revision="1.0" when="2016-11-22 09:50:32" who="" what="" why=""/>
			<Hitem version="2.0" revision="1.0" when="2016-11-22 09:59:17" who="" what="" why=""/>
			<Hitem version="2.0" revision="1.0" when="2016-11-22 10:00:14" who="" what="" why=""/>
			<Hitem version="2.0" revision="1.0" when="2016-11-22 10:27:46" who="" what="" why=""/>
			<Hitem version="2.0" revision="1.0" when="2016-11-22 10:34:34" who="" what="" why=""/>
			<Hitem version="2.1" revision="1.0" when="2016-11-22 10:35:55" who="" what="" why=""/>
			<Hitem version="2.1" revision="1.0" when="2016-11-22 10:36:40" who="" what="" why=""/>
			<Hitem version="2.1" revision="1.0" when="2016-11-22 10:39:05" who="" what="" why=""/>
			<Hitem version="2.1" revision="1.0" when="2016-11-22 10:39:10" who="" what="" why=""/>
			<Hitem version="2.1" revision="1.0" when="2016-11-22 10:39:21" who="" what="" why=""/>
			<Hitem version="2.1" revision="1.0" when="2016-11-22 10:40:25" who="" what="" why=""/>
			<Hitem version="2.1" revision="1.0" when="2016-11-22 11:28:09" who="" what="" why=""/>
			<Hitem version="2.1" revision="1.0" when="2016-11-22 11:28:29" who="" what="" why=""/>
			<Hitem version="2.1" revision="1.0" when="2016-11-22 11:29:25" who="" what="" why=""/>
			<Hitem version="2.1" revision="1.0" when="2016-11-22 11:32:16" who="" what="" why=""/>
			<Hitem version="2.1" revision="1.2" when="2016-11-22 13:49:31" who="" what="" why=""/>
			<Hitem version="2.1" revision="1.2" when="2016-11-22 13:49:50" who="" what="" why=""/>
			<Hitem version="2.1" revision="1.2" when="2016-11-22 13:50:29" who="" what="" why=""/>
			<Hitem version="2.1" revision="1.2" when="2016-11-22 13:56:00" who="" what="" why=""/>
			<Hitem version="2.1" revision="1.2" when="2016-11-22 14:01:17" who="" what="" why=""/>
			<Hitem version="2.1" revision="1.0" when="2016-11-22 14:04:50" who="" what="" why=""/>
		</History>
	</Header>
	<Communication>
		<SubNetwork name="Subnetwork_Stationbus">
			<ConnectedAP iedName="NS3642" apName="S1">
				<Address>
					<P type="OSI-AP-Title">1,3,9999,33</P>
					<P type="OSI-AE-Qualifier">33</P>
					<P type="OSI-PSEL">00000001</P>
					<P type="OSI-SSEL">0001</P>
					<P type="OSI-TSEL">0001</P>
					<P type="IP">127.0.0.1</P>
					<P type="IP-SUBNET">255.255.0.0</P>
				</Address>
				<GSE ldInst="CTRL" cbName="gocb1">
					<Address>
						<P type="MAC-Address">01-0C-CD-01-00-00</P>
						<P type="VLAN-ID">000</P>
						<P type="VLAN-PRIORITY">4</P>
						<P type="APPID">0000</P>
					</Address>
					<MinTime unit="s" multiplier="m">2</MinTime>
					<MaxTime unit="s" multiplier="m">5000</MaxTime>
				</GSE>
			</ConnectedAP>
		</SubNetwork>
		<SubNetwork name="Subnetwork_Processbus">
			<ConnectedAP iedName="NS3642" apName="G1">
				<GSE ldInst="PIGO" cbName="gocb1">
					<Address>
						<P type="MAC-Address">01-0C-CD-01-00-00</P>
						<P type="VLAN-ID">000</P>
						<P type="VLAN-PRIORITY">4</P>
						<P type="APPID">0000</P>
					</Address>
					<MinTime unit="s" multiplier="m">2</MinTime>
					<MaxTime unit="s" multiplier="m">5000</MaxTime>
				</GSE>
			</ConnectedAP>
			<ConnectedAP iedName="NS3642" apName="M1"/>
		</SubNetwork>
		<SubNetwork name="MSV9-2">
			<BitRate unit="b/s" multiplier="M">100</BitRate>
			<ConnectedAP iedName="MU" apName="M1">
				<SMV ldInst="MU" cbName="MSVCB01">
					<Address>
						<P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-04-00-01</P>
						<P type="APPID" xsi:type="tP_APPID">4001</P>
						<P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
						<P type="VLAN-ID" xsi:type="tP_VLAN-ID">000</P>
					</Address>
				</SMV>
			</ConnectedAP>
			<ConnectedAP iedName="MU1" apName="M1">
				<SMV ldInst="MU" cbName="MSVCB01">
					<Address>
						<P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-04-00-02</P>
						<P type="APPID" xsi:type="tP_APPID">4002</P>
						<P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
						<P type="VLAN-ID" xsi:type="tP_VLAN-ID">000</P>
					</Address>
				</SMV>
			</ConnectedAP>
		</SubNetwork>
		<SubNetwork name="GOOSE">
			<BitRate unit="b/s">100</BitRate>
			<ConnectedAP iedName="MU" apName="G1">
				<GSE ldInst="GO" cbName="GoCB0">
					<Address>
						<P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-10-01</P>
						<P type="APPID" xsi:type="tP_APPID">1001</P>
						<P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
						<P type="VLAN-ID" xsi:type="tP_VLAN-ID">000</P>
					</Address>
					<MinTime unit="s" multiplier="m">5</MinTime>
					<MaxTime unit="s" multiplier="m">15000</MaxTime>
				</GSE>
			</ConnectedAP>
			<ConnectedAP iedName="MU1" apName="G1">
				<GSE ldInst="GO" cbName="GoCB0">
					<Address>
						<P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-10-02</P>
						<P type="APPID" xsi:type="tP_APPID">1002</P>
						<P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
						<P type="VLAN-ID" xsi:type="tP_VLAN-ID">000</P>
					</Address>
					<MinTime unit="s" multiplier="m">5</MinTime>
					<MaxTime unit="s" multiplier="m">15000</MaxTime>
				</GSE>
			</ConnectedAP>
			<ConnectedAP iedName="ZD" apName="G1">
				<GSE ldInst="RPIT" cbName="gocb0">
					<Address>
						<P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-10-03</P>
						<P type="VLAN-ID" xsi:type="tP_VLAN-ID">000</P>
						<P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
						<P type="APPID" xsi:type="tP_APPID">1003</P>
					</Address>
					<MinTime unit="s" multiplier="m">1</MinTime>
					<MaxTime unit="s" multiplier="m">5000</MaxTime>
				</GSE>
				<GSE ldInst="RPIT" cbName="gocb1">
					<Address>
						<P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-10-04</P>
						<P type="VLAN-ID" xsi:type="tP_VLAN-ID">000</P>
						<P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
						<P type="APPID" xsi:type="tP_APPID">1004</P>
					</Address>
					<MinTime unit="s" multiplier="m">1</MinTime>
					<MaxTime unit="s" multiplier="m">5000</MaxTime>
				</GSE>
				<GSE ldInst="RPIT" cbName="gocb2">
					<Address>
						<P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-10-05</P>
						<P type="VLAN-ID" xsi:type="tP_VLAN-ID">000</P>
						<P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
						<P type="APPID" xsi:type="tP_APPID">1005</P>
					</Address>
					<MinTime unit="s" multiplier="m">1</MinTime>
					<MaxTime unit="s" multiplier="m">5000</MaxTime>
				</GSE>
			</ConnectedAP>
		</SubNetwork>
	</Communication>
	<IED name="MU" type="MUDev" desc="线路全相PT" manufacturer="NARITECH" configVersion="V1.0">
		<Private type="IED virtual terminal conection CRC">76909893</Private>
		<Services>
			<ConfDataSet max="16" maxAttributes="256"/>
		</Services>
		<AccessPoint name="M1">
			<Server>
				<Authentication/>
				<LDevice inst="MU">
					<Private type="ldNo" source="IEC60044-8_send_ds1">2</Private>
					<Private type="ldNo" source="IEC60044-8_recv_ds1">2</Private>
					<LN0 lnClass="LLN0" lnType="1_GNR_LLN0_Smart" inst="">
						<DataSet name="MSV9-2_send_ds1" desc="MSV9-2发送数据集1">
							<FCDA ldInst="MU" lnClass="LLN0" doName="DelayTRtg" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="1" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="1" doName="Amp2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="2" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="2" doName="Amp2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="3" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="3" doName="Amp2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="5" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="6" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="7" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="1" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="1" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="2" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="2" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="3" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="3" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="6" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="6" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="4" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="4" doName="Amp2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="4" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="4" doName="Vol2" fc="MX"/>
						</DataSet>
						<DataSet name="IEC60044-8_send_ds1" desc="IEC60044-8发送数据集1">
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="1" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="1" doName="Amp2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="2" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="2" doName="Amp2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="3" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="3" doName="Amp2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="5" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="6" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="7" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="1" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="1" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="2" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="2" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="3" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="3" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="5" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="5" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="4" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="4" doName="Amp2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="4" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="4" doName="Vol2" fc="MX"/>
						</DataSet>
						<DataSet name="IEC60044-8_recv_ds1" desc="IEC60044-8接收数据集1">
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="10" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="10" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="0" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="0" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="0" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="0" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="14" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="14" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="0" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="0" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="0" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="0" doName="Vol2" fc="MX"/>
						</DataSet>
						<DOI name="DelayTRtg" desc="1500"/>
						<SampledValueControl name="MSVCB01" desc="" smvID="MUMU/LLN0$SV$MSVCB01" datSet="MSV9-2_send_ds1" confRev="1" smpRate="80" nofASDU="1">
							<SmvOpts refreshTime="false" sampleSynchronized="true" sampleRate="false" security="false" dataRef="false"/>
						</SampledValueControl>
					</LN0>
					<LN lnClass="LPHD" lnType="1_CN_LPHD" inst="0" desc="装置铭牌信息"/>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="0" desc="无效"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="0" desc="无效">
						<DOI name="Vol1" desc="电压AD1（采样值）"/>
						<DOI name="Vol2" desc="电压AD2（采样值）"/>
					</LN>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="1" desc="A相保护电流">
						<DOI name="Amp1" desc="电流AD1（采样值）"/>
						<DOI name="Amp2" desc="电流AD2（采样值）"/>
					</LN>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="2" desc="B相保护电流">
						<DOI name="Amp1" desc="电流AD1（采样值）"/>
						<DOI name="Amp2" desc="电流AD2（采样值）"/>
					</LN>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="3" desc="C相保护电流">
						<DOI name="Amp1" desc="电流AD1（采样值）"/>
						<DOI name="Amp2" desc="电流AD2（采样值）"/>
					</LN>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="4" desc="中性点电流">
						<DOI name="Amp1" desc="电流AD1（采样值）"/>
						<DOI name="Amp2" desc="电流AD2（采样值）"/>
					</LN>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="5" desc="A相测量电流">
						<DOI name="Amp1" desc="电流AD1（采样值）"/>
					</LN>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="6" desc="B相测量电流">
						<DOI name="Amp1" desc="电流AD1（采样值）"/>
					</LN>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="7" desc="C相测量电流">
						<DOI name="Amp1" desc="电流AD1（采样值）"/>
					</LN>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="1" desc="A相电压">
						<DOI name="Vol1" desc="电压AD1（采样值）"/>
						<DOI name="Vol2" desc="电压AD2（采样值）"/>
					</LN>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="2" desc="B相电压">
						<DOI name="Vol1" desc="电压AD1（采样值）"/>
						<DOI name="Vol2" desc="电压AD2（采样值）"/>
					</LN>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="3" desc="C相电压">
						<DOI name="Vol1" desc="电压AD1（采样值）"/>
						<DOI name="Vol2" desc="电压AD2（采样值）"/>
					</LN>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="4" desc="零序电压">
						<DOI name="Vol1" desc="电压AD1（采样值）"/>
						<DOI name="Vol2" desc="电压AD2（采样值）"/>
					</LN>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="5" desc="母线电压">
						<DOI name="Vol1" desc="电压AD1（采样值）"/>
						<DOI name="Vol2" desc="电压AD2（采样值）"/>
					</LN>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="6" desc="母线A相电压">
						<DOI name="Vol1" desc="电压AD1（采样值）"/>
						<DOI name="Vol2" desc="电压AD2（采样值）"/>
					</LN>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="7" desc="母线B相电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="8" desc="母线C相电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="9" desc="I母电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="10" desc="I母A相电压">
						<DOI name="Vol1" desc="电压AD1（采样值）"/>
						<DOI name="Vol2" desc="电压AD2（采样值）"/>
					</LN>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="11" desc="I母B相电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="12" desc="I母C相电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="13" desc="II母电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="14" desc="II母A相电压">
						<DOI name="Vol1" desc="电压AD1（采样值）"/>
						<DOI name="Vol2" desc="电压AD2（采样值）"/>
					</LN>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="15" desc="II母B相电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="16" desc="II母C相电压"/>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="21" desc="反极性A相保护电流"/>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="22" desc="反极性B相保护电流"/>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="23" desc="反极性C相保护电流"/>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="24" desc="反极性中性点电流"/>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="25" desc="反极性A相测量电流"/>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="26" desc="反极性B相测量电流"/>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="27" desc="反极性C相测量电流"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="21" desc="反极性A相电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="22" desc="反极性B相电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="23" desc="反极性C相电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="24" desc="反极性零序电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="25" desc="反极性母线电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="26" desc="反极性母线A相电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="27" desc="反极性母线B相电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="28" desc="反极性母线C相电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="29" desc="反极性I母电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="30" desc="反极性I母A相电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="31" desc="反极性I母B相电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="32" desc="反极性I母C相电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="33" desc="反极性II母电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="34" desc="反极性II母A相电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="35" desc="反极性II母B相电压"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="36" desc="反极性II母C相电压"/>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="40" desc="无效"/>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="41" desc="无效"/>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="42" desc="无效"/>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="43" desc="无效"/>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="44" desc="无效"/>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="45" desc="无效"/>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="46" desc="无效"/>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="47" desc="无效"/>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="48" desc="无效"/>
					<LN lnClass="TCTR" lnType="1_GNR_TCTR_DOUBLE" inst="49" desc="无效"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="40" desc="无效"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="41" desc="无效"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="42" desc="无效"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="43" desc="无效"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="44" desc="无效"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="45" desc="无效"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="46" desc="无效"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="47" desc="无效"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="48" desc="无效"/>
					<LN lnClass="TVTR" lnType="1_GNR_TVTR_DOUBLE" inst="49" desc="无效"/>
				</LDevice>
			</Server>
		</AccessPoint>
		<AccessPoint name="G1">
			<Server>
				<Authentication/>
				<LDevice inst="GO">
					<LN0 lnClass="LLN0" lnType="1_CN_LLN0" inst="">
						<DataSet name="dsGOOSE0" desc="母线切换信息">
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind3" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind6" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind7" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind12" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind13" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind14" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind15" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind16" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind17" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind18" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind19" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind20" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind21" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind22" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind23" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind24" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind25" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind26" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind27" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind28" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind29" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind30" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind31" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind32" daName="stVal" fc="ST"/>
						</DataSet>
						<DataSet name="dsGOOSE1" desc="ECVT状态信息">
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind3" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind6" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind7" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind12" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind13" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind14" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind15" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind16" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind17" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind18" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind19" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind20" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind21" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind22" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind23" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind24" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind25" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind26" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind27" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind28" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind29" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind30" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind31" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind32" daName="stVal" fc="ST"/>
						</DataSet>
						<DataSet name="dsGOOSE2" desc="ECVT状态信息">
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind3" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind6" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind7" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind12" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind13" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind14" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind15" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind16" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind17" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind18" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind19" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind20" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind21" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind22" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind23" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind24" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind25" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind26" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind27" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind28" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind29" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind30" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind31" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind32" daName="stVal" fc="ST"/>
						</DataSet>
						<DataSet name="dsGOOSE3" desc="ECVT状态信息">
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind3" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind6" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind7" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind12" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind13" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind14" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind15" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind16" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind17" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind18" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind19" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind20" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind21" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind22" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind23" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind24" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind25" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind26" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind27" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind28" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind29" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind30" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind31" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind32" daName="stVal" fc="ST"/>
						</DataSet>
						<DataSet name="dsGOOSE4" desc="ECVT状态信息">
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind3" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind6" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind7" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind12" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind13" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind14" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind15" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind16" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind17" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind18" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind19" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind20" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind21" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind22" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind23" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind24" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind25" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind26" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind27" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind28" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind29" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind30" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind31" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind32" daName="stVal" fc="ST"/>
						</DataSet>
						<DataSet name="dsGOOSE5" desc="ECVT状态信息">
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind3" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind6" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind7" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind12" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind13" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind14" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind15" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind16" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind17" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind18" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind19" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind20" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind21" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind22" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind23" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind24" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind25" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind26" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind27" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind28" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind29" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind30" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind31" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind32" daName="stVal" fc="ST"/>
						</DataSet>
						<DataSet name="dsGOOSE6" desc="ECVT采样信息">
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind3" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind6" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind7" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind12" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind13" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind14" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind15" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind16" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind17" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind18" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind19" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind20" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind21" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind22" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind23" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind24" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind25" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind26" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind27" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind28" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind29" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind30" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind31" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind32" daName="stVal" fc="ST"/>
						</DataSet>
						<GSEControl name="GoCB0" datSet="dsGOOSE0" confRev="1" appID="MU3261GO/LLN0$GO$GoCB0">
							<Private type="NARITECH-IsDoubleNet">0</Private>
							<Private type="NARITECH-NetCardNoA">0</Private>
							<Private type="NARITECH-NetCardNoB">1</Private>
						</GSEControl>
					</LN0>
					<LN lnClass="LPHD" lnType="1_CN_LPHD" inst="0" desc="装置铭牌信息"/>
					<LN prefix="BinIn" lnClass="GGIO" lnType="1_GNR_GGIO_DPC8_Ind16" inst="0" desc="开关遥信接入">
						<DOI name="DPCSO1" desc="I母(PT)刀闸双遥信">
							<DAI name="stVal" sAddr="130.1.0.0"/>
							<DAI name="q" sAddr="130.2.0.0"/>
							<DAI name="t" sAddr="130.3.0.0"/>
							<DAI name="dU" sAddr="I母(PT)刀闸双遥信"/>
						</DOI>
						<DOI name="DPCSO2" desc="II母(PT)刀闸双遥信">
							<DAI name="stVal" sAddr="130.1.1.0"/>
							<DAI name="q" sAddr="130.2.1.0"/>
							<DAI name="t" sAddr="130.3.1.0"/>
							<DAI name="dU" sAddr="II母(PT)刀闸双遥信"/>
						</DOI>
						<DOI name="DPCSO3" desc="母联开关双遥信">
							<DAI name="stVal" sAddr="130.1.2.0"/>
							<DAI name="q" sAddr="130.2.2.0"/>
							<DAI name="t" sAddr="130.3.2.0"/>
							<DAI name="dU" sAddr="母联开关双遥信"/>
						</DOI>
						<DOI name="DPCSO4" desc="母联PT1刀闸双遥信">
							<DAI name="stVal" sAddr="130.1.3.0"/>
							<DAI name="q" sAddr="130.2.3.0"/>
							<DAI name="t" sAddr="130.3.3.0"/>
							<DAI name="dU" sAddr="母联PT1刀闸双遥信"/>
						</DOI>
						<DOI name="DPCSO5" desc="母联PT2刀闸双遥信">
							<DAI name="stVal" sAddr="130.1.4.0"/>
							<DAI name="q" sAddr="130.2.4.0"/>
							<DAI name="t" sAddr="130.3.4.0"/>
							<DAI name="dU" sAddr="母联PT2刀闸双遥信"/>
						</DOI>
						<DOI name="DPCSO6" desc="双遥信6">
							<DAI name="stVal" sAddr="130.1.5.0"/>
							<DAI name="q" sAddr="130.2.5.0"/>
							<DAI name="t" sAddr="130.3.5.0"/>
							<DAI name="dU" sAddr="双遥信6"/>
						</DOI>
						<DOI name="DPCSO7" desc="双遥信7">
							<DAI name="stVal" sAddr="130.1.6.0"/>
							<DAI name="q" sAddr="130.2.6.0"/>
							<DAI name="t" sAddr="130.3.6.0"/>
							<DAI name="dU" sAddr="双遥信7"/>
						</DOI>
						<DOI name="DPCSO8" desc="双遥信8">
							<DAI name="stVal" sAddr="130.1.7.0"/>
							<DAI name="q" sAddr="130.2.7.0"/>
							<DAI name="t" sAddr="130.3.7.0"/>
							<DAI name="dU" sAddr="双遥信8"/>
						</DOI>
						<DOI name="Ind1" desc="I母(PT)刀闸单遥信">
							<DAI name="stVal" sAddr="129.1.0.0"/>
							<DAI name="q" sAddr="129.2.0.0"/>
							<DAI name="t" sAddr="129.3.0.0"/>
							<DAI name="dU" sAddr="I母(PT)刀闸单遥信"/>
						</DOI>
						<DOI name="Ind2" desc="II母(PT)刀闸单遥信">
							<DAI name="stVal" sAddr="129.1.1.0"/>
							<DAI name="q" sAddr="129.2.1.0"/>
							<DAI name="t" sAddr="129.3.1.0"/>
							<DAI name="dU" sAddr="II母(PT)刀闸单遥信"/>
						</DOI>
						<DOI name="Ind3" desc="母联开关单遥信">
							<DAI name="stVal" sAddr="129.1.2.0"/>
							<DAI name="q" sAddr="129.2.2.0"/>
							<DAI name="t" sAddr="129.3.2.0"/>
							<DAI name="dU" sAddr="母联开关单遥信"/>
						</DOI>
						<DOI name="Ind4" desc="母联PT1刀闸单遥信">
							<DAI name="stVal" sAddr="129.1.3.0"/>
							<DAI name="q" sAddr="129.2.3.0"/>
							<DAI name="t" sAddr="129.3.3.0"/>
							<DAI name="dU" sAddr="母联PT1刀闸单遥信"/>
						</DOI>
						<DOI name="Ind5" desc="母联PT2刀闸单遥信">
							<DAI name="stVal" sAddr="129.1.4.0"/>
							<DAI name="q" sAddr="129.2.4.0"/>
							<DAI name="t" sAddr="129.3.4.0"/>
							<DAI name="dU" sAddr="母联PT2刀闸单遥信"/>
						</DOI>
						<DOI name="Ind6" desc="单遥信6">
							<DAI name="stVal" sAddr="129.1.5.0"/>
							<DAI name="q" sAddr="129.2.5.0"/>
							<DAI name="t" sAddr="129.3.5.0"/>
							<DAI name="dU" sAddr="单遥信6"/>
						</DOI>
						<DOI name="Ind7" desc="单遥信7">
							<DAI name="stVal" sAddr="129.1.6.0"/>
							<DAI name="q" sAddr="129.2.6.0"/>
							<DAI name="t" sAddr="129.3.6.0"/>
							<DAI name="dU" sAddr="单遥信7"/>
						</DOI>
						<DOI name="Ind8" desc="单遥信8">
							<DAI name="stVal" sAddr="129.1.7.0"/>
							<DAI name="q" sAddr="129.2.7.0"/>
							<DAI name="t" sAddr="129.3.7.0"/>
							<DAI name="dU" sAddr="单遥信8"/>
						</DOI>
						<DOI name="Ind9" desc="并I母电压命令">
							<DAI name="stVal" sAddr="129.1.8.0"/>
							<DAI name="q" sAddr="129.2.8.0"/>
							<DAI name="t" sAddr="129.3.8.0"/>
							<DAI name="dU" sAddr="并I母电压命令"/>
						</DOI>
						<DOI name="Ind10" desc="并II母电压命令">
							<DAI name="stVal" sAddr="129.1.9.0"/>
							<DAI name="q" sAddr="129.2.9.0"/>
							<DAI name="t" sAddr="129.3.9.0"/>
							<DAI name="dU" sAddr="并II母电压命令"/>
						</DOI>
						<DOI name="Ind11" desc="解列命令">
							<DAI name="stVal" sAddr="129.1.10.0"/>
							<DAI name="q" sAddr="129.2.10.0"/>
							<DAI name="t" sAddr="129.3.10.0"/>
							<DAI name="dU" sAddr="解列命令"/>
						</DOI>
						<DOI name="Ind12" desc="单遥信12">
							<DAI name="stVal" sAddr="129.1.11.0"/>
							<DAI name="q" sAddr="129.2.11.0"/>
							<DAI name="t" sAddr="129.3.11.0"/>
							<DAI name="dU" sAddr="单遥信12"/>
						</DOI>
						<DOI name="Ind13" desc="单遥信13">
							<DAI name="stVal" sAddr="129.1.12.0"/>
							<DAI name="q" sAddr="129.2.12.0"/>
							<DAI name="t" sAddr="129.3.12.0"/>
							<DAI name="dU" sAddr="单遥信13"/>
						</DOI>
						<DOI name="Ind14" desc="单遥信14">
							<DAI name="stVal" sAddr="129.1.13.0"/>
							<DAI name="q" sAddr="129.2.13.0"/>
							<DAI name="t" sAddr="129.3.13.0"/>
							<DAI name="dU" sAddr="单遥信14"/>
						</DOI>
						<DOI name="Ind15" desc="单遥信15">
							<DAI name="stVal" sAddr="129.1.14.0"/>
							<DAI name="q" sAddr="129.2.14.0"/>
							<DAI name="t" sAddr="129.3.14.0"/>
							<DAI name="dU" sAddr="单遥信15"/>
						</DOI>
						<DOI name="Ind16" desc="单遥信16">
							<DAI name="stVal" sAddr="129.1.15.0"/>
							<DAI name="q" sAddr="129.2.15.0"/>
							<DAI name="t" sAddr="129.3.15.0"/>
							<DAI name="dU" sAddr="单遥信16"/>
						</DOI>
					</LN>
					<LN prefix="BinOut" lnClass="GGIO" lnType="1_GNR_GGIO_Ind32" inst="1" desc="开关遥信上送">
						<DOI name="Ind1" desc="取I母电压成功">
							<DAI name="stVal" sAddr="1.1.0.0"/>
							<DAI name="q" sAddr="1.2.0.0"/>
							<DAI name="t" sAddr="1.3.0.0"/>
							<DAI name="dU" sAddr="取I母电压成功"/>
						</DOI>
						<DOI name="Ind2" desc="取II母电压成功">
							<DAI name="stVal" sAddr="1.1.1.0"/>
							<DAI name="q" sAddr="1.2.1.0"/>
							<DAI name="t" sAddr="1.3.1.0"/>
							<DAI name="dU" sAddr="取II母电压成功"/>
						</DOI>
						<DOI name="Ind3" desc="解列成功">
							<DAI name="stVal" sAddr="1.1.2.0"/>
							<DAI name="q" sAddr="1.2.2.0"/>
							<DAI name="t" sAddr="1.3.2.0"/>
							<DAI name="dU" sAddr="解列成功"/>
						</DOI>
						<DOI name="Ind4" desc="并列/解列命令错误">
							<DAI name="stVal" sAddr="1.1.3.0"/>
							<DAI name="q" sAddr="1.2.3.0"/>
							<DAI name="t" sAddr="1.3.3.0"/>
							<DAI name="dU" sAddr="并列/解列命令错误"/>
						</DOI>
						<DOI name="Ind5" desc="装置检修">
							<DAI name="stVal" sAddr="1.1.4.0"/>
							<DAI name="q" sAddr="1.2.4.0"/>
							<DAI name="t" sAddr="1.3.4.0"/>
							<DAI name="dU" sAddr="装置检修"/>
						</DOI>
						<DOI name="Ind6" desc="I母(PT)刀闸位置异常">
							<DAI name="stVal" sAddr="1.1.5.0"/>
							<DAI name="q" sAddr="1.2.5.0"/>
							<DAI name="t" sAddr="1.3.5.0"/>
							<DAI name="dU" sAddr="I母(PT)刀闸位置异常">
								<Val>I母(PT)刀闸位置异常</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="II母(PT)刀闸位置异常">
							<DAI name="stVal" sAddr="1.1.6.0"/>
							<DAI name="q" sAddr="1.2.6.0"/>
							<DAI name="t" sAddr="1.3.6.0"/>
							<DAI name="dU" sAddr="II母(PT)刀闸位置异常"/>
						</DOI>
						<DOI name="Ind8" desc="母联开关位置异常">
							<DAI name="stVal" sAddr="1.1.7.0"/>
							<DAI name="q" sAddr="1.2.7.0"/>
							<DAI name="t" sAddr="1.3.7.0"/>
							<DAI name="dU" sAddr="母联开关位置异常"/>
						</DOI>
						<DOI name="Ind9" desc="遥信9">
							<DAI name="stVal" sAddr="1.1.8.0"/>
							<DAI name="q" sAddr="1.2.8.0"/>
							<DAI name="t" sAddr="1.3.8.0"/>
							<DAI name="dU" sAddr="遥信9"/>
						</DOI>
						<DOI name="Ind10" desc="GOOSE网1中断">
							<DAI name="stVal" sAddr="1.1.9.0"/>
							<DAI name="q" sAddr="1.2.9.0"/>
							<DAI name="t" sAddr="1.3.9.0"/>
							<DAI name="dU" sAddr="GOOSE网1中断"/>
						</DOI>
						<DOI name="Ind11" desc="GOOSE网2中断">
							<DAI name="stVal" sAddr="1.1.10.0"/>
							<DAI name="q" sAddr="1.2.10.0"/>
							<DAI name="t" sAddr="1.3.10.0"/>
							<DAI name="dU" sAddr="GOOSE网2中断"/>
						</DOI>
						<DOI name="Ind12" desc="遥信12">
							<DAI name="stVal" sAddr="1.1.11.0"/>
							<DAI name="q" sAddr="1.2.11.0"/>
							<DAI name="t" sAddr="1.3.11.0"/>
							<DAI name="dU" sAddr="遥信12"/>
						</DOI>
						<DOI name="Ind13" desc="遥信13">
							<DAI name="stVal" sAddr="1.1.12.0"/>
							<DAI name="q" sAddr="1.2.12.0"/>
							<DAI name="t" sAddr="1.3.12.0"/>
							<DAI name="dU" sAddr="遥信13"/>
						</DOI>
						<DOI name="Ind14" desc="装置告警">
							<DAI name="stVal" sAddr="1.1.13.0"/>
							<DAI name="q" sAddr="1.2.13.0"/>
							<DAI name="t" sAddr="1.3.13.0"/>
							<DAI name="dU" sAddr="装置告警"/>
						</DOI>
						<DOI name="Ind15" desc="装置远方">
							<DAI name="stVal" sAddr="1.1.14.0"/>
							<DAI name="q" sAddr="1.2.14.0"/>
							<DAI name="t" sAddr="1.3.14.0"/>
							<DAI name="dU" sAddr="装置远方"/>
						</DOI>
						<DOI name="Ind16" desc="遥信16">
							<DAI name="stVal" sAddr="1.1.15.0"/>
							<DAI name="q" sAddr="1.2.15.0"/>
							<DAI name="t" sAddr="1.3.15.0"/>
							<DAI name="dU" sAddr="遥信16"/>
						</DOI>
						<DOI name="Ind17" desc="母联PT1刀闸位置异常">
							<DAI name="stVal" sAddr="1.1.16.0"/>
							<DAI name="q" sAddr="1.2.16.0"/>
							<DAI name="t" sAddr="1.3.16.0"/>
							<DAI name="dU" sAddr="母联PT1刀闸位置异常"/>
						</DOI>
						<DOI name="Ind18" desc="母联PT2刀闸位置异常">
							<DAI name="stVal" sAddr="1.1.17.0"/>
							<DAI name="q" sAddr="1.2.17.0"/>
							<DAI name="t" sAddr="1.3.17.0"/>
							<DAI name="dU" sAddr="母联PT2刀闸位置异常"/>
						</DOI>
						<DOI name="Ind19" desc="遥信19">
							<DAI name="stVal" sAddr="1.1.18.0"/>
							<DAI name="q" sAddr="1.2.18.0"/>
							<DAI name="t" sAddr="1.3.18.0"/>
							<DAI name="dU" sAddr="遥信19"/>
						</DOI>
						<DOI name="Ind20" desc="遥信20">
							<DAI name="stVal" sAddr="1.1.19.0"/>
							<DAI name="q" sAddr="1.2.19.0"/>
							<DAI name="t" sAddr="1.3.19.0"/>
							<DAI name="dU" sAddr="遥信20"/>
						</DOI>
						<DOI name="Ind21" desc="遥信21">
							<DAI name="stVal" sAddr="1.1.20.0"/>
							<DAI name="q" sAddr="1.2.20.0"/>
							<DAI name="t" sAddr="1.3.20.0"/>
							<DAI name="dU" sAddr="遥信21"/>
						</DOI>
						<DOI name="Ind22" desc="遥信22">
							<DAI name="stVal" sAddr="1.1.21.0"/>
							<DAI name="q" sAddr="1.2.21.0"/>
							<DAI name="t" sAddr="1.3.21.0"/>
							<DAI name="dU" sAddr="遥信22"/>
						</DOI>
						<DOI name="Ind23" desc="采样异常">
							<DAI name="stVal" sAddr="1.1.22.0"/>
							<DAI name="q" sAddr="1.2.22.0"/>
							<DAI name="t" sAddr="1.3.22.0"/>
							<DAI name="dU" sAddr="采样异常"/>
						</DOI>
						<DOI name="Ind24" desc="采样失步">
							<DAI name="stVal" sAddr="1.1.23.0"/>
							<DAI name="q" sAddr="1.2.23.0"/>
							<DAI name="t" sAddr="1.3.23.0"/>
							<DAI name="dU" sAddr="采样失步"/>
						</DOI>
						<DOI name="Ind25" desc="GOOSE I母(PT)刀闸遥信检修">
							<DAI name="stVal" sAddr="1.1.24.0"/>
							<DAI name="q" sAddr="1.2.24.0"/>
							<DAI name="t" sAddr="1.3.24.0"/>
							<DAI name="dU" sAddr="GOOSE I母(PT)刀闸遥信检修"/>
						</DOI>
						<DOI name="Ind26" desc="GOOSE II母(PT)刀闸遥信检修">
							<DAI name="stVal" sAddr="1.1.25.0"/>
							<DAI name="q" sAddr="1.2.25.0"/>
							<DAI name="t" sAddr="1.3.25.0"/>
							<DAI name="dU" sAddr="GOOSE II母(PT)刀闸遥信检修"/>
						</DOI>
						<DOI name="Ind27" desc="GOOSE 母联开关遥信检修">
							<DAI name="stVal" sAddr="1.1.26.0"/>
							<DAI name="q" sAddr="1.2.26.0"/>
							<DAI name="t" sAddr="1.3.26.0"/>
							<DAI name="dU" sAddr="GOOSE 母联开关遥信检修"/>
						</DOI>
						<DOI name="Ind28" desc="GOOSE 母联PT1刀闸遥信检修">
							<DAI name="stVal" sAddr="1.1.27.0"/>
							<DAI name="q" sAddr="1.2.27.0"/>
							<DAI name="t" sAddr="1.3.27.0"/>
							<DAI name="dU" sAddr="GOOSE 母联PT1刀闸遥信检修"/>
						</DOI>
						<DOI name="Ind29" desc="GOOSE 母联PT2刀闸遥信检修">
							<DAI name="stVal" sAddr="1.1.28.0"/>
							<DAI name="q" sAddr="1.2.28.0"/>
							<DAI name="t" sAddr="1.3.28.0"/>
							<DAI name="dU" sAddr="GOOSE 母联PT2刀闸遥信检修"/>
						</DOI>
						<DOI name="Ind30" desc="GOOSE 取I母电压命令遥信检修">
							<DAI name="stVal" sAddr="1.1.29.0"/>
							<DAI name="q" sAddr="1.2.29.0"/>
							<DAI name="t" sAddr="1.3.29.0"/>
							<DAI name="dU" sAddr="GOOSE 取I母电压命令遥信检修"/>
						</DOI>
						<DOI name="Ind31" desc="GOOSE 取II母电压命令遥信检修">
							<DAI name="stVal" sAddr="1.1.30.0"/>
							<DAI name="q" sAddr="1.2.30.0"/>
							<DAI name="t" sAddr="1.3.30.0"/>
							<DAI name="dU" sAddr="GOOSE 取II母电压命令遥信检修"/>
						</DOI>
						<DOI name="Ind32" desc="GOOSE 解列命令遥信检修">
							<DAI name="stVal" sAddr="1.1.31.0"/>
							<DAI name="q" sAddr="1.2.31.0"/>
							<DAI name="t" sAddr="1.3.31.0"/>
							<DAI name="dU" sAddr="GOOSE 解列命令遥信检修"/>
						</DOI>
					</LN>
					<LN prefix="BinOut" lnClass="GGIO" lnType="1_GNR_GGIO_Ind32" inst="2" desc="开关遥信上送">
						<DOI name="Ind1" desc="A相保护电流1数据无效">
							<DAI name="stVal" sAddr="1.1.32.0"/>
							<DAI name="q" sAddr="1.2.32.0"/>
							<DAI name="t" sAddr="1.3.32.0"/>
							<DAI name="dU" sAddr="A相保护电流1数据无效"/>
						</DOI>
						<DOI name="Ind2" desc="A相保护电流1光路故障">
							<DAI name="stVal" sAddr="1.1.33.0"/>
							<DAI name="q" sAddr="1.2.33.0"/>
							<DAI name="t" sAddr="1.3.33.0"/>
							<DAI name="dU" sAddr="A相保护电流1光路故障"/>
						</DOI>
						<DOI name="Ind3" desc="A相保护电流1电路故障">
							<DAI name="stVal" sAddr="1.1.34.0"/>
							<DAI name="q" sAddr="1.2.34.0"/>
							<DAI name="t" sAddr="1.3.34.0"/>
							<DAI name="dU" sAddr="A相保护电流1电路故障"/>
						</DOI>
						<DOI name="Ind4" desc="A相保护电流1AD采样故障">
							<DAI name="stVal" sAddr="1.1.35.0"/>
							<DAI name="q" sAddr="1.2.35.0"/>
							<DAI name="t" sAddr="1.3.35.0"/>
							<DAI name="dU" sAddr="A相保护电流1AD采样故障"/>
						</DOI>
						<DOI name="Ind5" desc="B相保护电流1数据无效">
							<DAI name="stVal" sAddr="1.1.36.0"/>
							<DAI name="q" sAddr="1.2.36.0"/>
							<DAI name="t" sAddr="1.3.36.0"/>
							<DAI name="dU" sAddr="B相保护电流1数据无效"/>
						</DOI>
						<DOI name="Ind6" desc="B相保护电流1光路故障">
							<DAI name="stVal" sAddr="1.1.37.0"/>
							<DAI name="q" sAddr="1.2.37.0"/>
							<DAI name="t" sAddr="1.3.37.0"/>
							<DAI name="dU" sAddr="B相保护电流1光路故障"/>
						</DOI>
						<DOI name="Ind7" desc="B相保护电流1电路故障">
							<DAI name="stVal" sAddr="1.1.38.0"/>
							<DAI name="q" sAddr="1.2.38.0"/>
							<DAI name="t" sAddr="1.3.38.0"/>
							<DAI name="dU" sAddr="B相保护电流1电路故障"/>
						</DOI>
						<DOI name="Ind8" desc="B相保护电流1AD采样故障">
							<DAI name="stVal" sAddr="1.1.39.0"/>
							<DAI name="q" sAddr="1.2.39.0"/>
							<DAI name="t" sAddr="1.3.39.0"/>
							<DAI name="dU" sAddr="B相保护电流1AD采样故障"/>
						</DOI>
						<DOI name="Ind9" desc="C相保护电流1数据无效">
							<DAI name="stVal" sAddr="1.1.40.0"/>
							<DAI name="q" sAddr="1.2.40.0"/>
							<DAI name="t" sAddr="1.3.40.0"/>
							<DAI name="dU" sAddr="C相保护电流1数据无效"/>
						</DOI>
						<DOI name="Ind10" desc="C相保护电流1光路故障">
							<DAI name="stVal" sAddr="1.1.41.0"/>
							<DAI name="q" sAddr="1.2.41.0"/>
							<DAI name="t" sAddr="1.3.41.0"/>
							<DAI name="dU" sAddr="C相保护电流1光路故障"/>
						</DOI>
						<DOI name="Ind11" desc="C相保护电流1电路故障">
							<DAI name="stVal" sAddr="1.1.42.0"/>
							<DAI name="q" sAddr="1.2.42.0"/>
							<DAI name="t" sAddr="1.3.42.0"/>
							<DAI name="dU" sAddr="C相保护电流1电路故障"/>
						</DOI>
						<DOI name="Ind12" desc="C相保护电流1AD采样故障">
							<DAI name="stVal" sAddr="1.1.43.0"/>
							<DAI name="q" sAddr="1.2.43.0"/>
							<DAI name="t" sAddr="1.3.43.0"/>
							<DAI name="dU" sAddr="C相保护电流1AD采样故障"/>
						</DOI>
						<DOI name="Ind13" desc="中性点电流1数据无效">
							<DAI name="stVal" sAddr="1.1.44.0"/>
							<DAI name="q" sAddr="1.2.44.0"/>
							<DAI name="t" sAddr="1.3.44.0"/>
							<DAI name="dU" sAddr="中性点电流1数据无效"/>
						</DOI>
						<DOI name="Ind14" desc="中性点电流1光路故障">
							<DAI name="stVal" sAddr="1.1.45.0"/>
							<DAI name="q" sAddr="1.2.45.0"/>
							<DAI name="t" sAddr="1.3.45.0"/>
							<DAI name="dU" sAddr="中性点电流1光路故障"/>
						</DOI>
						<DOI name="Ind15" desc="中性点电流1电路故障">
							<DAI name="stVal" sAddr="1.1.46.0"/>
							<DAI name="q" sAddr="1.2.46.0"/>
							<DAI name="t" sAddr="1.3.46.0"/>
							<DAI name="dU" sAddr="中性点电流1电路故障"/>
						</DOI>
						<DOI name="Ind16" desc="中性点电流1AD采样故障">
							<DAI name="stVal" sAddr="1.1.47.0"/>
							<DAI name="q" sAddr="1.2.47.0"/>
							<DAI name="t" sAddr="1.3.47.0"/>
							<DAI name="dU" sAddr="中性点电流1AD采样故障"/>
						</DOI>
						<DOI name="Ind17" desc="A相测量电流1数据无效">
							<DAI name="stVal" sAddr="1.1.48.0"/>
							<DAI name="q" sAddr="1.2.48.0"/>
							<DAI name="t" sAddr="1.3.48.0"/>
							<DAI name="dU" sAddr="A相测量电流1数据无效"/>
						</DOI>
						<DOI name="Ind18" desc="A相测量电流1光路故障">
							<DAI name="stVal" sAddr="1.1.49.0"/>
							<DAI name="q" sAddr="1.2.49.0"/>
							<DAI name="t" sAddr="1.3.49.0"/>
							<DAI name="dU" sAddr="A相测量电流1光路故障"/>
						</DOI>
						<DOI name="Ind19" desc="A相测量电流1电路故障">
							<DAI name="stVal" sAddr="1.1.50.0"/>
							<DAI name="q" sAddr="1.2.50.0"/>
							<DAI name="t" sAddr="1.3.50.0"/>
							<DAI name="dU" sAddr="A相测量电流1电路故障"/>
						</DOI>
						<DOI name="Ind20" desc="A相测量电流1AD采样故障">
							<DAI name="stVal" sAddr="1.1.51.0"/>
							<DAI name="q" sAddr="1.2.51.0"/>
							<DAI name="t" sAddr="1.3.51.0"/>
							<DAI name="dU" sAddr="A相测量电流1AD采样故障"/>
						</DOI>
						<DOI name="Ind21" desc="B相测量电流1数据无效">
							<DAI name="stVal" sAddr="1.1.52.0"/>
							<DAI name="q" sAddr="1.2.52.0"/>
							<DAI name="t" sAddr="1.3.52.0"/>
							<DAI name="dU" sAddr="B相测量电流1数据无效"/>
						</DOI>
						<DOI name="Ind22" desc="B相测量电流1光路故障">
							<DAI name="stVal" sAddr="1.1.53.0"/>
							<DAI name="q" sAddr="1.2.53.0"/>
							<DAI name="t" sAddr="1.3.53.0"/>
							<DAI name="dU" sAddr="B相测量电流1光路故障"/>
						</DOI>
						<DOI name="Ind23" desc="B相测量电流1电路故障">
							<DAI name="stVal" sAddr="1.1.54.0"/>
							<DAI name="q" sAddr="1.2.54.0"/>
							<DAI name="t" sAddr="1.3.54.0"/>
							<DAI name="dU" sAddr="B相测量电流1电路故障"/>
						</DOI>
						<DOI name="Ind24" desc="B相测量电流1AD采样故障">
							<DAI name="stVal" sAddr="1.1.55.0"/>
							<DAI name="q" sAddr="1.2.55.0"/>
							<DAI name="t" sAddr="1.3.55.0"/>
							<DAI name="dU" sAddr="B相测量电流1AD采样故障"/>
						</DOI>
						<DOI name="Ind25" desc="C相测量电流1数据无效">
							<DAI name="stVal" sAddr="1.1.56.0"/>
							<DAI name="q" sAddr="1.2.56.0"/>
							<DAI name="t" sAddr="1.3.56.0"/>
							<DAI name="dU" sAddr="C相测量电流1数据无效"/>
						</DOI>
						<DOI name="Ind26" desc="C相测量电流1光路故障">
							<DAI name="stVal" sAddr="1.1.57.0"/>
							<DAI name="q" sAddr="1.2.57.0"/>
							<DAI name="t" sAddr="1.3.57.0"/>
							<DAI name="dU" sAddr="C相测量电流1光路故障"/>
						</DOI>
						<DOI name="Ind27" desc="C相测量电流1电路故障">
							<DAI name="stVal" sAddr="1.1.58.0"/>
							<DAI name="q" sAddr="1.2.58.0"/>
							<DAI name="t" sAddr="1.3.58.0"/>
							<DAI name="dU" sAddr="C相测量电流1电路故障"/>
						</DOI>
						<DOI name="Ind28" desc="C相测量电流1AD采样故障">
							<DAI name="stVal" sAddr="1.1.59.0"/>
							<DAI name="q" sAddr="1.2.59.0"/>
							<DAI name="t" sAddr="1.3.59.0"/>
							<DAI name="dU" sAddr="C相测量电流1AD采样故障"/>
						</DOI>
						<DOI name="Ind29" desc="A相电压1数据无效">
							<DAI name="stVal" sAddr="1.1.60.0"/>
							<DAI name="q" sAddr="1.2.60.0"/>
							<DAI name="t" sAddr="1.3.60.0"/>
							<DAI name="dU" sAddr="A相电压1数据无效"/>
						</DOI>
						<DOI name="Ind30" desc="A相电压1光路故障">
							<DAI name="stVal" sAddr="1.1.61.0"/>
							<DAI name="q" sAddr="1.2.61.0"/>
							<DAI name="t" sAddr="1.3.61.0"/>
							<DAI name="dU" sAddr="A相电压1光路故障"/>
						</DOI>
						<DOI name="Ind31" desc="A相电压1电路故障">
							<DAI name="stVal" sAddr="1.1.62.0"/>
							<DAI name="q" sAddr="1.2.62.0"/>
							<DAI name="t" sAddr="1.3.62.0"/>
							<DAI name="dU" sAddr="A相电压1电路故障"/>
						</DOI>
						<DOI name="Ind32" desc="A相电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.63.0"/>
							<DAI name="q" sAddr="1.2.63.0"/>
							<DAI name="t" sAddr="1.3.63.0"/>
							<DAI name="dU" sAddr="A相电压1AD采样故障"/>
						</DOI>
					</LN>
					<LN prefix="BinOut" lnClass="GGIO" lnType="1_GNR_GGIO_Ind32" inst="3" desc="开关遥信上送">
						<DOI name="Ind1" desc="B相电压1数据无效">
							<DAI name="stVal" sAddr="1.1.64.0"/>
							<DAI name="q" sAddr="1.2.64.0"/>
							<DAI name="t" sAddr="1.3.64.0"/>
							<DAI name="dU" sAddr="B相电压1数据无效"/>
						</DOI>
						<DOI name="Ind2" desc="B相电压1光路故障">
							<DAI name="stVal" sAddr="1.1.65.0"/>
							<DAI name="q" sAddr="1.2.65.0"/>
							<DAI name="t" sAddr="1.3.65.0"/>
							<DAI name="dU" sAddr="B相电压1光路故障"/>
						</DOI>
						<DOI name="Ind3" desc="B相电压1电路故障">
							<DAI name="stVal" sAddr="1.1.66.0"/>
							<DAI name="q" sAddr="1.2.66.0"/>
							<DAI name="t" sAddr="1.3.66.0"/>
							<DAI name="dU" sAddr="B相电压1电路故障"/>
						</DOI>
						<DOI name="Ind4" desc="B相电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.67.0"/>
							<DAI name="q" sAddr="1.2.67.0"/>
							<DAI name="t" sAddr="1.3.67.0"/>
							<DAI name="dU" sAddr="B相电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind5" desc="C相电压1数据无效">
							<DAI name="stVal" sAddr="1.1.68.0"/>
							<DAI name="q" sAddr="1.2.68.0"/>
							<DAI name="t" sAddr="1.3.68.0"/>
							<DAI name="dU" sAddr="C相电压1数据无效"/>
						</DOI>
						<DOI name="Ind6" desc="C相电压1光路故障">
							<DAI name="stVal" sAddr="1.1.69.0"/>
							<DAI name="q" sAddr="1.2.69.0"/>
							<DAI name="t" sAddr="1.3.69.0"/>
							<DAI name="dU" sAddr="C相电压1光路故障"/>
						</DOI>
						<DOI name="Ind7" desc="C相电压1电路故障">
							<DAI name="stVal" sAddr="1.1.70.0"/>
							<DAI name="q" sAddr="1.2.70.0"/>
							<DAI name="t" sAddr="1.3.70.0"/>
							<DAI name="dU" sAddr="C相电压1电路故障"/>
						</DOI>
						<DOI name="Ind8" desc="C相电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.71.0"/>
							<DAI name="q" sAddr="1.2.71.0"/>
							<DAI name="t" sAddr="1.3.71.0"/>
							<DAI name="dU" sAddr="C相电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind9" desc="零序电压1数据无效">
							<DAI name="stVal" sAddr="1.1.72.0"/>
							<DAI name="q" sAddr="1.2.72.0"/>
							<DAI name="t" sAddr="1.3.72.0"/>
							<DAI name="dU" sAddr="零序电压1数据无效"/>
						</DOI>
						<DOI name="Ind10" desc="零序电压1光路故障">
							<DAI name="stVal" sAddr="1.1.73.0"/>
							<DAI name="q" sAddr="1.2.73.0"/>
							<DAI name="t" sAddr="1.3.73.0"/>
							<DAI name="dU" sAddr="零序电压1光路故障"/>
						</DOI>
						<DOI name="Ind11" desc="零序电压1电路故障">
							<DAI name="stVal" sAddr="1.1.74.0"/>
							<DAI name="q" sAddr="1.2.74.0"/>
							<DAI name="t" sAddr="1.3.74.0"/>
							<DAI name="dU" sAddr="零序电压1电路故障"/>
						</DOI>
						<DOI name="Ind12" desc="零序电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.75.0"/>
							<DAI name="q" sAddr="1.2.75.0"/>
							<DAI name="t" sAddr="1.3.75.0"/>
							<DAI name="dU" sAddr="零序电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind13" desc="I母电压1数据无效">
							<DAI name="stVal" sAddr="1.1.76.0"/>
							<DAI name="q" sAddr="1.2.76.0"/>
							<DAI name="t" sAddr="1.3.76.0"/>
							<DAI name="dU" sAddr="I母电压1数据无效"/>
						</DOI>
						<DOI name="Ind14" desc="I母电压1光路故障">
							<DAI name="stVal" sAddr="1.1.77.0"/>
							<DAI name="q" sAddr="1.2.77.0"/>
							<DAI name="t" sAddr="1.3.77.0"/>
							<DAI name="dU" sAddr="I母电压1光路故障"/>
						</DOI>
						<DOI name="Ind15" desc="I母电压1电路故障">
							<DAI name="stVal" sAddr="1.1.78.0"/>
							<DAI name="q" sAddr="1.2.78.0"/>
							<DAI name="t" sAddr="1.3.78.0"/>
							<DAI name="dU" sAddr="I母电压1电路故障"/>
						</DOI>
						<DOI name="Ind16" desc="I母电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.79.0"/>
							<DAI name="q" sAddr="1.2.79.0"/>
							<DAI name="t" sAddr="1.3.79.0"/>
							<DAI name="dU" sAddr="I母电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind17" desc="I母A相电压1数据无效">
							<DAI name="stVal" sAddr="1.1.80.0"/>
							<DAI name="q" sAddr="1.2.80.0"/>
							<DAI name="t" sAddr="1.3.80.0"/>
							<DAI name="dU" sAddr="I母A相电压1数据无效"/>
						</DOI>
						<DOI name="Ind18" desc="I母A相电压1光路故障">
							<DAI name="stVal" sAddr="1.1.81.0"/>
							<DAI name="q" sAddr="1.2.81.0"/>
							<DAI name="t" sAddr="1.3.81.0"/>
							<DAI name="dU" sAddr="I母A相电压1光路故障"/>
						</DOI>
						<DOI name="Ind19" desc="I母A相电压1电路故障">
							<DAI name="stVal" sAddr="1.1.82.0"/>
							<DAI name="q" sAddr="1.2.82.0"/>
							<DAI name="t" sAddr="1.3.82.0"/>
							<DAI name="dU" sAddr="I母A相电压1电路故障"/>
						</DOI>
						<DOI name="Ind20" desc="I母A相电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.83.0"/>
							<DAI name="q" sAddr="1.2.83.0"/>
							<DAI name="t" sAddr="1.3.83.0"/>
							<DAI name="dU" sAddr="I母A相电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind21" desc="I母B相电压1数据无效">
							<DAI name="stVal" sAddr="1.1.84.0"/>
							<DAI name="q" sAddr="1.2.84.0"/>
							<DAI name="t" sAddr="1.3.84.0"/>
							<DAI name="dU" sAddr="I母B相电压1数据无效"/>
						</DOI>
						<DOI name="Ind22" desc="I母B相电压1光路故障">
							<DAI name="stVal" sAddr="1.1.85.0"/>
							<DAI name="q" sAddr="1.2.85.0"/>
							<DAI name="t" sAddr="1.3.85.0"/>
							<DAI name="dU" sAddr="I母B相电压1光路故障"/>
						</DOI>
						<DOI name="Ind23" desc="I母B相电压1电路故障">
							<DAI name="stVal" sAddr="1.1.86.0"/>
							<DAI name="q" sAddr="1.2.86.0"/>
							<DAI name="t" sAddr="1.3.86.0"/>
							<DAI name="dU" sAddr="I母B相电压1电路故障"/>
						</DOI>
						<DOI name="Ind24" desc="I母B相电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.87.0"/>
							<DAI name="q" sAddr="1.2.87.0"/>
							<DAI name="t" sAddr="1.3.87.0"/>
							<DAI name="dU" sAddr="I母B相电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind25" desc="I母C相电压1数据无效">
							<DAI name="stVal" sAddr="1.1.88.0"/>
							<DAI name="q" sAddr="1.2.88.0"/>
							<DAI name="t" sAddr="1.3.88.0"/>
							<DAI name="dU" sAddr="I母C相电压1数据无效"/>
						</DOI>
						<DOI name="Ind26" desc="I母C相电压1光路故障">
							<DAI name="stVal" sAddr="1.1.89.0"/>
							<DAI name="q" sAddr="1.2.89.0"/>
							<DAI name="t" sAddr="1.3.89.0"/>
							<DAI name="dU" sAddr="I母C相电压1光路故障"/>
						</DOI>
						<DOI name="Ind27" desc="I母C相电压1电路故障">
							<DAI name="stVal" sAddr="1.1.90.0"/>
							<DAI name="q" sAddr="1.2.90.0"/>
							<DAI name="t" sAddr="1.3.90.0"/>
							<DAI name="dU" sAddr="I母C相电压1电路故障"/>
						</DOI>
						<DOI name="Ind28" desc="I母C相电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.91.0"/>
							<DAI name="q" sAddr="1.2.91.0"/>
							<DAI name="t" sAddr="1.3.91.0"/>
							<DAI name="dU" sAddr="I母C相电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind29" desc="II母电压1数据无效">
							<DAI name="stVal" sAddr="1.1.92.0"/>
							<DAI name="q" sAddr="1.2.92.0"/>
							<DAI name="t" sAddr="1.3.92.0"/>
							<DAI name="dU" sAddr="II母电压1数据无效"/>
						</DOI>
						<DOI name="Ind30" desc="II母电压1光路故障">
							<DAI name="stVal" sAddr="1.1.93.0"/>
							<DAI name="q" sAddr="1.2.93.0"/>
							<DAI name="t" sAddr="1.3.93.0"/>
							<DAI name="dU" sAddr="II母电压1光路故障"/>
						</DOI>
						<DOI name="Ind31" desc="II母电压1电路故障">
							<DAI name="stVal" sAddr="1.1.94.0"/>
							<DAI name="q" sAddr="1.2.94.0"/>
							<DAI name="t" sAddr="1.3.94.0"/>
							<DAI name="dU" sAddr="II母电压1电路故障"/>
						</DOI>
						<DOI name="Ind32" desc="II母电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.95.0"/>
							<DAI name="q" sAddr="1.2.95.0"/>
							<DAI name="t" sAddr="1.3.95.0"/>
							<DAI name="dU" sAddr="II母电压1AD采样故障"/>
						</DOI>
					</LN>
					<LN prefix="BinOut" lnClass="GGIO" lnType="1_GNR_GGIO_Ind32" inst="4" desc="开关遥信上送">
						<DOI name="Ind1" desc="II母A相电压1数据无效">
							<DAI name="stVal" sAddr="1.1.96.0"/>
							<DAI name="q" sAddr="1.2.96.0"/>
							<DAI name="t" sAddr="1.3.96.0"/>
							<DAI name="dU" sAddr="II母A相电压1数据无效"/>
						</DOI>
						<DOI name="Ind2" desc="II母A相电压1光路故障">
							<DAI name="stVal" sAddr="1.1.97.0"/>
							<DAI name="q" sAddr="1.2.97.0"/>
							<DAI name="t" sAddr="1.3.97.0"/>
							<DAI name="dU" sAddr="II母A相电压1光路故障"/>
						</DOI>
						<DOI name="Ind3" desc="II母A相电压1电路故障">
							<DAI name="stVal" sAddr="1.1.98.0"/>
							<DAI name="q" sAddr="1.2.98.0"/>
							<DAI name="t" sAddr="1.3.98.0"/>
							<DAI name="dU" sAddr="II母A相电压1电路故障"/>
						</DOI>
						<DOI name="Ind4" desc="II母A相电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.99.0"/>
							<DAI name="q" sAddr="1.2.99.0"/>
							<DAI name="t" sAddr="1.3.99.0"/>
							<DAI name="dU" sAddr="II母A相电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind5" desc="II母B相电压1数据无效">
							<DAI name="stVal" sAddr="1.1.100.0"/>
							<DAI name="q" sAddr="1.2.100.0"/>
							<DAI name="t" sAddr="1.3.100.0"/>
							<DAI name="dU" sAddr="II母B相电压1数据无效"/>
						</DOI>
						<DOI name="Ind6" desc="II母B相电压1光路故障">
							<DAI name="stVal" sAddr="1.1.101.0"/>
							<DAI name="q" sAddr="1.2.101.0"/>
							<DAI name="t" sAddr="1.3.101.0"/>
							<DAI name="dU" sAddr="II母B相电压1光路故障"/>
						</DOI>
						<DOI name="Ind7" desc="II母B相电压1电路故障">
							<DAI name="stVal" sAddr="1.1.102.0"/>
							<DAI name="q" sAddr="1.2.102.0"/>
							<DAI name="t" sAddr="1.3.102.0"/>
							<DAI name="dU" sAddr="II母B相电压1电路故障"/>
						</DOI>
						<DOI name="Ind8" desc="II母B相电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.103.0"/>
							<DAI name="q" sAddr="1.2.103.0"/>
							<DAI name="t" sAddr="1.3.103.0"/>
							<DAI name="dU" sAddr="II母B相电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind9" desc="II母C相电压1数据无效">
							<DAI name="stVal" sAddr="1.1.104.0"/>
							<DAI name="q" sAddr="1.2.104.0"/>
							<DAI name="t" sAddr="1.3.104.0"/>
							<DAI name="dU" sAddr="II母C相电压1数据无效"/>
						</DOI>
						<DOI name="Ind10" desc="II母C相电压1光路故障">
							<DAI name="stVal" sAddr="1.1.105.0"/>
							<DAI name="q" sAddr="1.2.105.0"/>
							<DAI name="t" sAddr="1.3.105.0"/>
							<DAI name="dU" sAddr="II母C相电压1光路故障"/>
						</DOI>
						<DOI name="Ind11" desc="II母C相电压1电路故障">
							<DAI name="stVal" sAddr="1.1.106.0"/>
							<DAI name="q" sAddr="1.2.106.0"/>
							<DAI name="t" sAddr="1.3.106.0"/>
							<DAI name="dU" sAddr="II母C相电压1电路故障"/>
						</DOI>
						<DOI name="Ind12" desc="II母C相电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.107.0"/>
							<DAI name="q" sAddr="1.2.107.0"/>
							<DAI name="t" sAddr="1.3.107.0"/>
							<DAI name="dU" sAddr="II母C相电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind13" desc="遥信13">
							<DAI name="stVal" sAddr="1.1.108.0"/>
							<DAI name="q" sAddr="1.2.108.0"/>
							<DAI name="t" sAddr="1.3.108.0"/>
							<DAI name="dU" sAddr="遥信13"/>
						</DOI>
						<DOI name="Ind14" desc="遥信14">
							<DAI name="stVal" sAddr="1.1.109.0"/>
							<DAI name="q" sAddr="1.2.109.0"/>
							<DAI name="t" sAddr="1.3.109.0"/>
							<DAI name="dU" sAddr="遥信14"/>
						</DOI>
						<DOI name="Ind15" desc="遥信15">
							<DAI name="stVal" sAddr="1.1.110.0"/>
							<DAI name="q" sAddr="1.2.110.0"/>
							<DAI name="t" sAddr="1.3.110.0"/>
							<DAI name="dU" sAddr="遥信15"/>
						</DOI>
						<DOI name="Ind16" desc="遥信16">
							<DAI name="stVal" sAddr="1.1.111.0"/>
							<DAI name="q" sAddr="1.2.111.0"/>
							<DAI name="t" sAddr="1.3.111.0"/>
							<DAI name="dU" sAddr="遥信16"/>
						</DOI>
						<DOI name="Ind17" desc="A相保护电流2数据无效">
							<DAI name="stVal" sAddr="1.1.112.0"/>
							<DAI name="q" sAddr="1.2.112.0"/>
							<DAI name="t" sAddr="1.3.112.0"/>
							<DAI name="dU" sAddr="A相保护电流2数据无效"/>
						</DOI>
						<DOI name="Ind18" desc="A相保护电流2光路故障">
							<DAI name="stVal" sAddr="1.1.113.0"/>
							<DAI name="q" sAddr="1.2.113.0"/>
							<DAI name="t" sAddr="1.3.113.0"/>
							<DAI name="dU" sAddr="A相保护电流2光路故障"/>
						</DOI>
						<DOI name="Ind19" desc="A相保护电流2电路故障">
							<DAI name="stVal" sAddr="1.1.114.0"/>
							<DAI name="q" sAddr="1.2.114.0"/>
							<DAI name="t" sAddr="1.3.114.0"/>
							<DAI name="dU" sAddr="A相保护电流2电路故障"/>
						</DOI>
						<DOI name="Ind20" desc="A相保护电流2AD采样故障">
							<DAI name="stVal" sAddr="1.1.115.0"/>
							<DAI name="q" sAddr="1.2.115.0"/>
							<DAI name="t" sAddr="1.3.115.0"/>
							<DAI name="dU" sAddr="A相保护电流2AD采样故障"/>
						</DOI>
						<DOI name="Ind21" desc="B相保护电流2数据无效">
							<DAI name="stVal" sAddr="1.1.116.0"/>
							<DAI name="q" sAddr="1.2.116.0"/>
							<DAI name="t" sAddr="1.3.116.0"/>
							<DAI name="dU" sAddr="B相保护电流2数据无效"/>
						</DOI>
						<DOI name="Ind22" desc="B相保护电流2光路故障">
							<DAI name="stVal" sAddr="1.1.117.0"/>
							<DAI name="q" sAddr="1.2.117.0"/>
							<DAI name="t" sAddr="1.3.117.0"/>
							<DAI name="dU" sAddr="B相保护电流2光路故障"/>
						</DOI>
						<DOI name="Ind23" desc="B相保护电流2电路故障">
							<DAI name="stVal" sAddr="1.1.118.0"/>
							<DAI name="q" sAddr="1.2.118.0"/>
							<DAI name="t" sAddr="1.3.118.0"/>
							<DAI name="dU" sAddr="B相保护电流2电路故障"/>
						</DOI>
						<DOI name="Ind24" desc="B相保护电流2AD采样故障">
							<DAI name="stVal" sAddr="1.1.119.0"/>
							<DAI name="q" sAddr="1.2.119.0"/>
							<DAI name="t" sAddr="1.3.119.0"/>
							<DAI name="dU" sAddr="B相保护电流2AD采样故障"/>
						</DOI>
						<DOI name="Ind25" desc="C相保护电流2数据无效">
							<DAI name="stVal" sAddr="1.1.120.0"/>
							<DAI name="q" sAddr="1.2.120.0"/>
							<DAI name="t" sAddr="1.3.120.0"/>
							<DAI name="dU" sAddr="C相保护电流2数据无效"/>
						</DOI>
						<DOI name="Ind26" desc="C相保护电流2光路故障">
							<DAI name="stVal" sAddr="1.1.121.0"/>
							<DAI name="q" sAddr="1.2.121.0"/>
							<DAI name="t" sAddr="1.3.121.0"/>
							<DAI name="dU" sAddr="C相保护电流2光路故障"/>
						</DOI>
						<DOI name="Ind27" desc="C相保护电流2电路故障">
							<DAI name="stVal" sAddr="1.1.122.0"/>
							<DAI name="q" sAddr="1.2.122.0"/>
							<DAI name="t" sAddr="1.3.122.0"/>
							<DAI name="dU" sAddr="C相保护电流2电路故障"/>
						</DOI>
						<DOI name="Ind28" desc="C相保护电流2AD采样故障">
							<DAI name="stVal" sAddr="1.1.123.0"/>
							<DAI name="q" sAddr="1.2.123.0"/>
							<DAI name="t" sAddr="1.3.123.0"/>
							<DAI name="dU" sAddr="C相保护电流2AD采样故障"/>
						</DOI>
						<DOI name="Ind29" desc="中性点电流2数据无效">
							<DAI name="stVal" sAddr="1.1.124.0"/>
							<DAI name="q" sAddr="1.2.124.0"/>
							<DAI name="t" sAddr="1.3.124.0"/>
							<DAI name="dU" sAddr="中性点电流2数据无效"/>
						</DOI>
						<DOI name="Ind30" desc="中性点电流2光路故障">
							<DAI name="stVal" sAddr="1.1.125.0"/>
							<DAI name="q" sAddr="1.2.125.0"/>
							<DAI name="t" sAddr="1.3.125.0"/>
							<DAI name="dU" sAddr="中性点电流2光路故障"/>
						</DOI>
						<DOI name="Ind31" desc="中性点电流2电路故障">
							<DAI name="stVal" sAddr="1.1.126.0"/>
							<DAI name="q" sAddr="1.2.126.0"/>
							<DAI name="t" sAddr="1.3.126.0"/>
							<DAI name="dU" sAddr="中性点电流2电路故障"/>
						</DOI>
						<DOI name="Ind32" desc="中性点电流2AD采样故障">
							<DAI name="stVal" sAddr="1.1.127.0"/>
							<DAI name="q" sAddr="1.2.127.0"/>
							<DAI name="t" sAddr="1.3.127.0"/>
							<DAI name="dU" sAddr="中性点电流2AD采样故障"/>
						</DOI>
					</LN>
					<LN prefix="BinOut" lnClass="GGIO" lnType="1_GNR_GGIO_Ind32" inst="5" desc="开关遥信上送">
						<DOI name="Ind1" desc="A相测量电流2数据无效">
							<DAI name="stVal" sAddr="1.1.128.0"/>
							<DAI name="q" sAddr="1.2.128.0"/>
							<DAI name="t" sAddr="1.3.128.0"/>
							<DAI name="dU" sAddr="A相测量电流2数据无效"/>
						</DOI>
						<DOI name="Ind2" desc="A相测量电流2光路故障">
							<DAI name="stVal" sAddr="1.1.129.0"/>
							<DAI name="q" sAddr="1.2.129.0"/>
							<DAI name="t" sAddr="1.3.129.0"/>
							<DAI name="dU" sAddr="A相测量电流2光路故障"/>
						</DOI>
						<DOI name="Ind3" desc="A相测量电流2电路故障">
							<DAI name="stVal" sAddr="1.1.130.0"/>
							<DAI name="q" sAddr="1.2.130.0"/>
							<DAI name="t" sAddr="1.3.130.0"/>
							<DAI name="dU" sAddr="A相测量电流2电路故障"/>
						</DOI>
						<DOI name="Ind4" desc="A相测量电流2AD采样故障">
							<DAI name="stVal" sAddr="1.1.131.0"/>
							<DAI name="q" sAddr="1.2.131.0"/>
							<DAI name="t" sAddr="1.3.131.0"/>
							<DAI name="dU" sAddr="A相测量电流2AD采样故障"/>
						</DOI>
						<DOI name="Ind5" desc="B相测量电流2数据无效">
							<DAI name="stVal" sAddr="1.1.132.0"/>
							<DAI name="q" sAddr="1.2.132.0"/>
							<DAI name="t" sAddr="1.3.132.0"/>
							<DAI name="dU" sAddr="B相测量电流2数据无效"/>
						</DOI>
						<DOI name="Ind6" desc="B相测量电流2光路故障">
							<DAI name="stVal" sAddr="1.1.133.0"/>
							<DAI name="q" sAddr="1.2.133.0"/>
							<DAI name="t" sAddr="1.3.133.0"/>
							<DAI name="dU" sAddr="B相测量电流2光路故障"/>
						</DOI>
						<DOI name="Ind7" desc="B相测量电流2电路故障">
							<DAI name="stVal" sAddr="1.1.134.0"/>
							<DAI name="q" sAddr="1.2.134.0"/>
							<DAI name="t" sAddr="1.3.134.0"/>
							<DAI name="dU" sAddr="B相测量电流2电路故障"/>
						</DOI>
						<DOI name="Ind8" desc="B相测量电流2AD采样故障">
							<DAI name="stVal" sAddr="1.1.135.0"/>
							<DAI name="q" sAddr="1.2.135.0"/>
							<DAI name="t" sAddr="1.3.135.0"/>
							<DAI name="dU" sAddr="B相测量电流2AD采样故障"/>
						</DOI>
						<DOI name="Ind9" desc="C相测量电流2数据无效">
							<DAI name="stVal" sAddr="1.1.136.0"/>
							<DAI name="q" sAddr="1.2.136.0"/>
							<DAI name="t" sAddr="1.3.136.0"/>
							<DAI name="dU" sAddr="C相测量电流2数据无效"/>
						</DOI>
						<DOI name="Ind10" desc="C相测量电流2光路故障">
							<DAI name="stVal" sAddr="1.1.137.0"/>
							<DAI name="q" sAddr="1.2.137.0"/>
							<DAI name="t" sAddr="1.3.137.0"/>
							<DAI name="dU" sAddr="C相测量电流2光路故障"/>
						</DOI>
						<DOI name="Ind11" desc="C相测量电流2电路故障">
							<DAI name="stVal" sAddr="1.1.138.0"/>
							<DAI name="q" sAddr="1.2.138.0"/>
							<DAI name="t" sAddr="1.3.138.0"/>
							<DAI name="dU" sAddr="C相测量电流2电路故障"/>
						</DOI>
						<DOI name="Ind12" desc="C相测量电流2AD采样故障">
							<DAI name="stVal" sAddr="1.1.139.0"/>
							<DAI name="q" sAddr="1.2.139.0"/>
							<DAI name="t" sAddr="1.3.139.0"/>
							<DAI name="dU" sAddr="C相测量电流2AD采样故障"/>
						</DOI>
						<DOI name="Ind13" desc="A相电压2数据无效">
							<DAI name="stVal" sAddr="1.1.140.0"/>
							<DAI name="q" sAddr="1.2.140.0"/>
							<DAI name="t" sAddr="1.3.140.0"/>
							<DAI name="dU" sAddr="A相电压2数据无效"/>
						</DOI>
						<DOI name="Ind14" desc="A相电压2光路故障">
							<DAI name="stVal" sAddr="1.1.141.0"/>
							<DAI name="q" sAddr="1.2.141.0"/>
							<DAI name="t" sAddr="1.3.141.0"/>
							<DAI name="dU" sAddr="A相电压2光路故障"/>
						</DOI>
						<DOI name="Ind15" desc="A相电压2电路故障">
							<DAI name="stVal" sAddr="1.1.142.0"/>
							<DAI name="q" sAddr="1.2.142.0"/>
							<DAI name="t" sAddr="1.3.142.0"/>
							<DAI name="dU" sAddr="A相电压2电路故障"/>
						</DOI>
						<DOI name="Ind16" desc="A相电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.143.0"/>
							<DAI name="q" sAddr="1.2.143.0"/>
							<DAI name="t" sAddr="1.3.143.0"/>
							<DAI name="dU" sAddr="A相电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind17" desc="B相电压2数据无效">
							<DAI name="stVal" sAddr="1.1.144.0"/>
							<DAI name="q" sAddr="1.2.144.0"/>
							<DAI name="t" sAddr="1.3.144.0"/>
							<DAI name="dU" sAddr="B相电压2数据无效"/>
						</DOI>
						<DOI name="Ind18" desc="B相电压2光路故障">
							<DAI name="stVal" sAddr="1.1.145.0"/>
							<DAI name="q" sAddr="1.2.145.0"/>
							<DAI name="t" sAddr="1.3.145.0"/>
							<DAI name="dU" sAddr="B相电压2光路故障"/>
						</DOI>
						<DOI name="Ind19" desc="B相电压2电路故障">
							<DAI name="stVal" sAddr="1.1.146.0"/>
							<DAI name="q" sAddr="1.2.146.0"/>
							<DAI name="t" sAddr="1.3.146.0"/>
							<DAI name="dU" sAddr="B相电压2电路故障"/>
						</DOI>
						<DOI name="Ind20" desc="B相电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.147.0"/>
							<DAI name="q" sAddr="1.2.147.0"/>
							<DAI name="t" sAddr="1.3.147.0"/>
							<DAI name="dU" sAddr="B相电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind21" desc="C相电压2数据无效">
							<DAI name="stVal" sAddr="1.1.148.0"/>
							<DAI name="q" sAddr="1.2.148.0"/>
							<DAI name="t" sAddr="1.3.148.0"/>
							<DAI name="dU" sAddr="C相电压2数据无效"/>
						</DOI>
						<DOI name="Ind22" desc="C相电压2光路故障">
							<DAI name="stVal" sAddr="1.1.149.0"/>
							<DAI name="q" sAddr="1.2.149.0"/>
							<DAI name="t" sAddr="1.3.149.0"/>
							<DAI name="dU" sAddr="C相电压2光路故障"/>
						</DOI>
						<DOI name="Ind23" desc="C相电压2电路故障">
							<DAI name="stVal" sAddr="1.1.150.0"/>
							<DAI name="q" sAddr="1.2.150.0"/>
							<DAI name="t" sAddr="1.3.150.0"/>
							<DAI name="dU" sAddr="C相电压2电路故障"/>
						</DOI>
						<DOI name="Ind24" desc="C相电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.151.0"/>
							<DAI name="q" sAddr="1.2.151.0"/>
							<DAI name="t" sAddr="1.3.151.0"/>
							<DAI name="dU" sAddr="C相电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind25" desc="零序电压2数据无效">
							<DAI name="stVal" sAddr="1.1.152.0"/>
							<DAI name="q" sAddr="1.2.152.0"/>
							<DAI name="t" sAddr="1.3.152.0"/>
							<DAI name="dU" sAddr="零序电压2数据无效"/>
						</DOI>
						<DOI name="Ind26" desc="零序电压2光路故障">
							<DAI name="stVal" sAddr="1.1.153.0"/>
							<DAI name="q" sAddr="1.2.153.0"/>
							<DAI name="t" sAddr="1.3.153.0"/>
							<DAI name="dU" sAddr="零序电压2光路故障"/>
						</DOI>
						<DOI name="Ind27" desc="零序电压2电路故障">
							<DAI name="stVal" sAddr="1.1.154.0"/>
							<DAI name="q" sAddr="1.2.154.0"/>
							<DAI name="t" sAddr="1.3.154.0"/>
							<DAI name="dU" sAddr="零序电压2电路故障"/>
						</DOI>
						<DOI name="Ind28" desc="零序电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.155.0"/>
							<DAI name="q" sAddr="1.2.155.0"/>
							<DAI name="t" sAddr="1.3.155.0"/>
							<DAI name="dU" sAddr="零序电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind29" desc="I母电压2数据无效">
							<DAI name="stVal" sAddr="1.1.156.0"/>
							<DAI name="q" sAddr="1.2.156.0"/>
							<DAI name="t" sAddr="1.3.156.0"/>
							<DAI name="dU" sAddr="I母电压2数据无效"/>
						</DOI>
						<DOI name="Ind30" desc="I母电压2光路故障">
							<DAI name="stVal" sAddr="1.1.157.0"/>
							<DAI name="q" sAddr="1.2.157.0"/>
							<DAI name="t" sAddr="1.3.157.0"/>
							<DAI name="dU" sAddr="I母电压2光路故障"/>
						</DOI>
						<DOI name="Ind31" desc="I母电压2电路故障">
							<DAI name="stVal" sAddr="1.1.158.0"/>
							<DAI name="q" sAddr="1.2.158.0"/>
							<DAI name="t" sAddr="1.3.158.0"/>
							<DAI name="dU" sAddr="I母电压2电路故障"/>
						</DOI>
						<DOI name="Ind32" desc="I母电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.159.0"/>
							<DAI name="q" sAddr="1.2.159.0"/>
							<DAI name="t" sAddr="1.3.159.0"/>
							<DAI name="dU" sAddr="I母电压2AD采样故障"/>
						</DOI>
					</LN>
					<LN prefix="BinOut" lnClass="GGIO" lnType="1_GNR_GGIO_Ind32" inst="6" desc="开关遥信上送">
						<DOI name="Ind1" desc="I母A相电压2数据无效">
							<DAI name="stVal" sAddr="1.1.160.0"/>
							<DAI name="q" sAddr="1.2.160.0"/>
							<DAI name="t" sAddr="1.3.160.0"/>
							<DAI name="dU" sAddr="I母A相电压2数据无效"/>
						</DOI>
						<DOI name="Ind2" desc="I母A相电压2光路故障">
							<DAI name="stVal" sAddr="1.1.161.0"/>
							<DAI name="q" sAddr="1.2.161.0"/>
							<DAI name="t" sAddr="1.3.161.0"/>
							<DAI name="dU" sAddr="I母A相电压2光路故障"/>
						</DOI>
						<DOI name="Ind3" desc="I母A相电压2电路故障">
							<DAI name="stVal" sAddr="1.1.162.0"/>
							<DAI name="q" sAddr="1.2.162.0"/>
							<DAI name="t" sAddr="1.3.162.0"/>
							<DAI name="dU" sAddr="I母A相电压2电路故障"/>
						</DOI>
						<DOI name="Ind4" desc="I母A相电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.163.0"/>
							<DAI name="q" sAddr="1.2.163.0"/>
							<DAI name="t" sAddr="1.3.163.0"/>
							<DAI name="dU" sAddr="I母A相电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind5" desc="I母B相电压2数据无效">
							<DAI name="stVal" sAddr="1.1.164.0"/>
							<DAI name="q" sAddr="1.2.164.0"/>
							<DAI name="t" sAddr="1.3.164.0"/>
							<DAI name="dU" sAddr="I母B相电压2数据无效"/>
						</DOI>
						<DOI name="Ind6" desc="I母B相电压2光路故障">
							<DAI name="stVal" sAddr="1.1.165.0"/>
							<DAI name="q" sAddr="1.2.165.0"/>
							<DAI name="t" sAddr="1.3.165.0"/>
							<DAI name="dU" sAddr="I母B相电压2光路故障"/>
						</DOI>
						<DOI name="Ind7" desc="I母B相电压2电路故障">
							<DAI name="stVal" sAddr="1.1.166.0"/>
							<DAI name="q" sAddr="1.2.166.0"/>
							<DAI name="t" sAddr="1.3.166.0"/>
							<DAI name="dU" sAddr="I母B相电压2电路故障"/>
						</DOI>
						<DOI name="Ind8" desc="I母B相电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.167.0"/>
							<DAI name="q" sAddr="1.2.167.0"/>
							<DAI name="t" sAddr="1.3.167.0"/>
							<DAI name="dU" sAddr="I母B相电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind9" desc="I母C相电压2数据无效">
							<DAI name="stVal" sAddr="1.1.168.0"/>
							<DAI name="q" sAddr="1.2.168.0"/>
							<DAI name="t" sAddr="1.3.168.0"/>
							<DAI name="dU" sAddr="I母C相电压2数据无效"/>
						</DOI>
						<DOI name="Ind10" desc="I母C相电压2光路故障">
							<DAI name="stVal" sAddr="1.1.169.0"/>
							<DAI name="q" sAddr="1.2.169.0"/>
							<DAI name="t" sAddr="1.3.169.0"/>
							<DAI name="dU" sAddr="I母C相电压2光路故障"/>
						</DOI>
						<DOI name="Ind11" desc="I母C相电压2电路故障">
							<DAI name="stVal" sAddr="1.1.170.0"/>
							<DAI name="q" sAddr="1.2.170.0"/>
							<DAI name="t" sAddr="1.3.170.0"/>
							<DAI name="dU" sAddr="I母C相电压2电路故障"/>
						</DOI>
						<DOI name="Ind12" desc="I母C相电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.171.0"/>
							<DAI name="q" sAddr="1.2.171.0"/>
							<DAI name="t" sAddr="1.3.171.0"/>
							<DAI name="dU" sAddr="I母C相电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind13" desc="II母电压2数据无效">
							<DAI name="stVal" sAddr="1.1.172.0"/>
							<DAI name="q" sAddr="1.2.172.0"/>
							<DAI name="t" sAddr="1.3.172.0"/>
							<DAI name="dU" sAddr="II母电压2数据无效"/>
						</DOI>
						<DOI name="Ind14" desc="II母电压2光路故障">
							<DAI name="stVal" sAddr="1.1.173.0"/>
							<DAI name="q" sAddr="1.2.173.0"/>
							<DAI name="t" sAddr="1.3.173.0"/>
							<DAI name="dU" sAddr="II母电压2光路故障"/>
						</DOI>
						<DOI name="Ind15" desc="II母电压2电路故障">
							<DAI name="stVal" sAddr="1.1.174.0"/>
							<DAI name="q" sAddr="1.2.174.0"/>
							<DAI name="t" sAddr="1.3.174.0"/>
							<DAI name="dU" sAddr="II母电压2电路故障"/>
						</DOI>
						<DOI name="Ind16" desc="II母电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.175.0"/>
							<DAI name="q" sAddr="1.2.175.0"/>
							<DAI name="t" sAddr="1.3.175.0"/>
							<DAI name="dU" sAddr="II母电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind17" desc="II母A相电压2数据无效">
							<DAI name="stVal" sAddr="1.1.176.0"/>
							<DAI name="q" sAddr="1.2.176.0"/>
							<DAI name="t" sAddr="1.3.176.0"/>
							<DAI name="dU" sAddr="II母A相电压2数据无效"/>
						</DOI>
						<DOI name="Ind18" desc="II母A相电压2光路故障">
							<DAI name="stVal" sAddr="1.1.177.0"/>
							<DAI name="q" sAddr="1.2.177.0"/>
							<DAI name="t" sAddr="1.3.177.0"/>
							<DAI name="dU" sAddr="II母A相电压2光路故障"/>
						</DOI>
						<DOI name="Ind19" desc="II母A相电压2电路故障">
							<DAI name="stVal" sAddr="1.1.178.0"/>
							<DAI name="q" sAddr="1.2.178.0"/>
							<DAI name="t" sAddr="1.3.178.0"/>
							<DAI name="dU" sAddr="II母A相电压2电路故障"/>
						</DOI>
						<DOI name="Ind20" desc="II母A相电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.179.0"/>
							<DAI name="q" sAddr="1.2.179.0"/>
							<DAI name="t" sAddr="1.3.179.0"/>
							<DAI name="dU" sAddr="II母A相电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind21" desc="II母B相电压2数据无效">
							<DAI name="stVal" sAddr="1.1.180.0"/>
							<DAI name="q" sAddr="1.2.180.0"/>
							<DAI name="t" sAddr="1.3.180.0"/>
							<DAI name="dU" sAddr="II母B相电压2数据无效"/>
						</DOI>
						<DOI name="Ind22" desc="II母B相电压2光路故障">
							<DAI name="stVal" sAddr="1.1.181.0"/>
							<DAI name="q" sAddr="1.2.181.0"/>
							<DAI name="t" sAddr="1.3.181.0"/>
							<DAI name="dU" sAddr="II母B相电压2光路故障"/>
						</DOI>
						<DOI name="Ind23" desc="II母B相电压2电路故障">
							<DAI name="stVal" sAddr="1.1.182.0"/>
							<DAI name="q" sAddr="1.2.182.0"/>
							<DAI name="t" sAddr="1.3.182.0"/>
							<DAI name="dU" sAddr="II母B相电压2电路故障"/>
						</DOI>
						<DOI name="Ind24" desc="II母B相电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.183.0"/>
							<DAI name="q" sAddr="1.2.183.0"/>
							<DAI name="t" sAddr="1.3.183.0"/>
							<DAI name="dU" sAddr="II母B相电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind25" desc="II母C相电压2数据无效">
							<DAI name="stVal" sAddr="1.1.184.0"/>
							<DAI name="q" sAddr="1.2.184.0"/>
							<DAI name="t" sAddr="1.3.184.0"/>
							<DAI name="dU" sAddr="II母C相电压2数据无效"/>
						</DOI>
						<DOI name="Ind26" desc="II母C相电压2光路故障">
							<DAI name="stVal" sAddr="1.1.185.0"/>
							<DAI name="q" sAddr="1.2.185.0"/>
							<DAI name="t" sAddr="1.3.185.0"/>
							<DAI name="dU" sAddr="II母C相电压2光路故障"/>
						</DOI>
						<DOI name="Ind27" desc="II母C相电压2电路故障">
							<DAI name="stVal" sAddr="1.1.186.0"/>
							<DAI name="q" sAddr="1.2.186.0"/>
							<DAI name="t" sAddr="1.3.186.0"/>
							<DAI name="dU" sAddr="II母C相电压2电路故障"/>
						</DOI>
						<DOI name="Ind28" desc="II母C相电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.187.0"/>
							<DAI name="q" sAddr="1.2.187.0"/>
							<DAI name="t" sAddr="1.3.187.0"/>
							<DAI name="dU" sAddr="II母C相电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind29" desc="遥信29">
							<DAI name="stVal" sAddr="1.1.188.0"/>
							<DAI name="q" sAddr="1.2.188.0"/>
							<DAI name="t" sAddr="1.3.188.0"/>
							<DAI name="dU" sAddr="遥信29"/>
						</DOI>
						<DOI name="Ind30" desc="遥信30">
							<DAI name="stVal" sAddr="1.1.189.0"/>
							<DAI name="q" sAddr="1.2.189.0"/>
							<DAI name="t" sAddr="1.3.189.0"/>
							<DAI name="dU" sAddr="遥信30"/>
						</DOI>
						<DOI name="Ind31" desc="遥信31">
							<DAI name="stVal" sAddr="1.1.190.0"/>
							<DAI name="q" sAddr="1.2.190.0"/>
							<DAI name="t" sAddr="1.3.190.0"/>
							<DAI name="dU" sAddr="遥信31"/>
						</DOI>
						<DOI name="Ind32" desc="遥信32">
							<DAI name="stVal" sAddr="1.1.191.0"/>
							<DAI name="q" sAddr="1.2.191.0"/>
							<DAI name="t" sAddr="1.3.191.0"/>
							<DAI name="dU" sAddr="遥信32"/>
						</DOI>
					</LN>
					<LN prefix="BinOut" lnClass="GGIO" lnType="1_GNR_GGIO_Ind32" inst="7" desc="开关遥信上送">
						<DOI name="Ind1" desc="第1个串口链路异常">
							<DAI name="stVal" sAddr="1.1.192.0"/>
							<DAI name="q" sAddr="1.2.192.0"/>
							<DAI name="t" sAddr="1.3.192.0"/>
							<DAI name="dU" sAddr="第1个串口链路异常"/>
						</DOI>
						<DOI name="Ind2" desc="第2个串口链路异常">
							<DAI name="stVal" sAddr="1.1.193.0"/>
							<DAI name="q" sAddr="1.2.193.0"/>
							<DAI name="t" sAddr="1.3.193.0"/>
							<DAI name="dU" sAddr="第2个串口链路异常"/>
						</DOI>
						<DOI name="Ind3" desc="第3个串口链路异常">
							<DAI name="stVal" sAddr="1.1.194.0"/>
							<DAI name="q" sAddr="1.2.194.0"/>
							<DAI name="t" sAddr="1.3.194.0"/>
							<DAI name="dU" sAddr="第3个串口链路异常"/>
						</DOI>
						<DOI name="Ind4" desc="第4个串口链路异常">
							<DAI name="stVal" sAddr="1.1.195.0"/>
							<DAI name="q" sAddr="1.2.195.0"/>
							<DAI name="t" sAddr="1.3.195.0"/>
							<DAI name="dU" sAddr="第4个串口链路异常"/>
						</DOI>
						<DOI name="Ind5" desc="第5个串口链路异常">
							<DAI name="stVal" sAddr="1.1.196.0"/>
							<DAI name="q" sAddr="1.2.196.0"/>
							<DAI name="t" sAddr="1.3.196.0"/>
							<DAI name="dU" sAddr="第5个串口链路异常"/>
						</DOI>
						<DOI name="Ind6" desc="第6个串口链路异常">
							<DAI name="stVal" sAddr="1.1.197.0"/>
							<DAI name="q" sAddr="1.2.197.0"/>
							<DAI name="t" sAddr="1.3.197.0"/>
							<DAI name="dU" sAddr="第6个串口链路异常"/>
						</DOI>
						<DOI name="Ind7" desc="第7个串口链路异常">
							<DAI name="stVal" sAddr="1.1.198.0"/>
							<DAI name="q" sAddr="1.2.198.0"/>
							<DAI name="t" sAddr="1.3.198.0"/>
							<DAI name="dU" sAddr="第7个串口链路异常"/>
						</DOI>
						<DOI name="Ind8" desc="第8个串口链路异常">
							<DAI name="stVal" sAddr="1.1.199.0"/>
							<DAI name="q" sAddr="1.2.199.0"/>
							<DAI name="t" sAddr="1.3.199.0"/>
							<DAI name="dU" sAddr="第8个串口链路异常"/>
						</DOI>
						<DOI name="Ind9" desc="第9个串口链路异常">
							<DAI name="stVal" sAddr="1.1.200.0"/>
							<DAI name="q" sAddr="1.2.200.0"/>
							<DAI name="t" sAddr="1.3.200.0"/>
							<DAI name="dU" sAddr="第9个串口链路异常"/>
						</DOI>
						<DOI name="Ind10" desc="第10个串口链路异常">
							<DAI name="stVal" sAddr="1.1.201.0"/>
							<DAI name="q" sAddr="1.2.201.0"/>
							<DAI name="t" sAddr="1.3.201.0"/>
							<DAI name="dU" sAddr="第10个串口链路异常"/>
						</DOI>
						<DOI name="Ind11" desc="第11个串口链路异常">
							<DAI name="stVal" sAddr="1.1.202.0"/>
							<DAI name="q" sAddr="1.2.202.0"/>
							<DAI name="t" sAddr="1.3.202.0"/>
							<DAI name="dU" sAddr="第11个串口链路异常"/>
						</DOI>
						<DOI name="Ind12" desc="第12个串口链路异常">
							<DAI name="stVal" sAddr="1.1.203.0"/>
							<DAI name="q" sAddr="1.2.203.0"/>
							<DAI name="t" sAddr="1.3.203.0"/>
							<DAI name="dU" sAddr="第12个串口链路异常"/>
						</DOI>
						<DOI name="Ind13" desc="第13个串口链路异常">
							<DAI name="stVal" sAddr="1.1.204.0"/>
							<DAI name="q" sAddr="1.2.204.0"/>
							<DAI name="t" sAddr="1.3.204.0"/>
							<DAI name="dU" sAddr="第13个串口链路异常"/>
						</DOI>
						<DOI name="Ind14" desc="第14个串口链路异常">
							<DAI name="stVal" sAddr="1.1.205.0"/>
							<DAI name="q" sAddr="1.2.205.0"/>
							<DAI name="t" sAddr="1.3.205.0"/>
							<DAI name="dU" sAddr="第14个串口链路异常"/>
						</DOI>
						<DOI name="Ind15" desc="遥信15">
							<DAI name="stVal" sAddr="1.1.206.0"/>
							<DAI name="q" sAddr="1.2.206.0"/>
							<DAI name="t" sAddr="1.3.206.0"/>
							<DAI name="dU" sAddr="遥信15"/>
						</DOI>
						<DOI name="Ind16" desc="遥信16">
							<DAI name="stVal" sAddr="1.1.207.0"/>
							<DAI name="q" sAddr="1.2.207.0"/>
							<DAI name="t" sAddr="1.3.207.0"/>
							<DAI name="dU" sAddr="遥信16"/>
						</DOI>
						<DOI name="Ind17" desc="第1个串口数据无效">
							<DAI name="stVal" sAddr="1.1.208.0"/>
							<DAI name="q" sAddr="1.2.208.0"/>
							<DAI name="t" sAddr="1.3.208.0"/>
							<DAI name="dU" sAddr="第1个串口数据无效"/>
						</DOI>
						<DOI name="Ind18" desc="第2个串口数据无效">
							<DAI name="stVal" sAddr="1.1.209.0"/>
							<DAI name="q" sAddr="1.2.209.0"/>
							<DAI name="t" sAddr="1.3.209.0"/>
							<DAI name="dU" sAddr="第2个串口数据无效"/>
						</DOI>
						<DOI name="Ind19" desc="第3个串口数据无效">
							<DAI name="stVal" sAddr="1.1.210.0"/>
							<DAI name="q" sAddr="1.2.210.0"/>
							<DAI name="t" sAddr="1.3.210.0"/>
							<DAI name="dU" sAddr="第3个串口数据无效"/>
						</DOI>
						<DOI name="Ind20" desc="第4个串口数据无效">
							<DAI name="stVal" sAddr="1.1.211.0"/>
							<DAI name="q" sAddr="1.2.211.0"/>
							<DAI name="t" sAddr="1.3.211.0"/>
							<DAI name="dU" sAddr="第4个串口数据无效"/>
						</DOI>
						<DOI name="Ind21" desc="第5个串口数据无效">
							<DAI name="stVal" sAddr="1.1.212.0"/>
							<DAI name="q" sAddr="1.2.212.0"/>
							<DAI name="t" sAddr="1.3.212.0"/>
							<DAI name="dU" sAddr="第5个串口数据无效"/>
						</DOI>
						<DOI name="Ind22" desc="第6个串口数据无效">
							<DAI name="stVal" sAddr="1.1.213.0"/>
							<DAI name="q" sAddr="1.2.213.0"/>
							<DAI name="t" sAddr="1.3.213.0"/>
							<DAI name="dU" sAddr="第6个串口数据无效"/>
						</DOI>
						<DOI name="Ind23" desc="第7个串口数据无效">
							<DAI name="stVal" sAddr="1.1.214.0"/>
							<DAI name="q" sAddr="1.2.214.0"/>
							<DAI name="t" sAddr="1.3.214.0"/>
							<DAI name="dU" sAddr="第7个串口数据无效"/>
						</DOI>
						<DOI name="Ind24" desc="第8个串口数据无效">
							<DAI name="stVal" sAddr="1.1.215.0"/>
							<DAI name="q" sAddr="1.2.215.0"/>
							<DAI name="t" sAddr="1.3.215.0"/>
							<DAI name="dU" sAddr="第8个串口数据无效"/>
						</DOI>
						<DOI name="Ind25" desc="第9个串口数据无效">
							<DAI name="stVal" sAddr="1.1.216.0"/>
							<DAI name="q" sAddr="1.2.216.0"/>
							<DAI name="t" sAddr="1.3.216.0"/>
							<DAI name="dU" sAddr="第9个串口数据无效"/>
						</DOI>
						<DOI name="Ind26" desc="第10个串口数据无效">
							<DAI name="stVal" sAddr="1.1.217.0"/>
							<DAI name="q" sAddr="1.2.217.0"/>
							<DAI name="t" sAddr="1.3.217.0"/>
							<DAI name="dU" sAddr="第10个串口数据无效"/>
						</DOI>
						<DOI name="Ind27" desc="第11个串口数据无效">
							<DAI name="stVal" sAddr="1.1.218.0"/>
							<DAI name="q" sAddr="1.2.218.0"/>
							<DAI name="t" sAddr="1.3.218.0"/>
							<DAI name="dU" sAddr="第11个串口数据无效"/>
						</DOI>
						<DOI name="Ind28" desc="第12个串口数据无效">
							<DAI name="stVal" sAddr="1.1.219.0"/>
							<DAI name="q" sAddr="1.2.219.0"/>
							<DAI name="t" sAddr="1.3.219.0"/>
							<DAI name="dU" sAddr="第12个串口数据无效"/>
						</DOI>
						<DOI name="Ind29" desc="第13个串口数据无效">
							<DAI name="stVal" sAddr="1.1.220.0"/>
							<DAI name="q" sAddr="1.2.220.0"/>
							<DAI name="t" sAddr="1.3.220.0"/>
							<DAI name="dU" sAddr="第13个串口数据无效"/>
						</DOI>
						<DOI name="Ind30" desc="第14个串口数据无效">
							<DAI name="stVal" sAddr="1.1.221.0"/>
							<DAI name="q" sAddr="1.2.221.0"/>
							<DAI name="t" sAddr="1.3.221.0"/>
							<DAI name="dU" sAddr="第14个串口数据无效"/>
						</DOI>
						<DOI name="Ind31" desc="遥信31">
							<DAI name="stVal" sAddr="1.1.222.0"/>
							<DAI name="q" sAddr="1.2.222.0"/>
							<DAI name="t" sAddr="1.3.222.0"/>
							<DAI name="dU" sAddr="遥信31"/>
						</DOI>
						<DOI name="Ind32" desc="遥信32">
							<DAI name="stVal" sAddr="1.1.223.0"/>
							<DAI name="q" sAddr="1.2.223.0"/>
							<DAI name="t" sAddr="1.3.223.0"/>
							<DAI name="dU" sAddr="遥信32"/>
						</DOI>
					</LN>
				</LDevice>
			</Server>
		</AccessPoint>
	</IED>
	<IED name="MU1" type="MUDev" desc="线路全相PT" manufacturer="NARITECH" configVersion="V1.0">
		<Private type="IED virtual terminal conection CRC">5D735799</Private>
		<Services>
			<ConfDataSet max="16" maxAttributes="256"/>
		</Services>
		<AccessPoint name="M1">
			<Server>
				<Authentication/>
				<LDevice inst="MU">
					<Private type="ldNo" source="IEC60044-8_send_ds1">2</Private>
					<Private type="ldNo" source="IEC60044-8_recv_ds1">2</Private>
					<LN0 lnClass="LLN0" lnType="2_GNR_LLN0_Smart" inst="">
						<DataSet name="MSV9-2_send_ds1" desc="MSV9-2发送数据集1">
							<FCDA ldInst="MU" lnClass="LLN0" doName="DelayTRtg" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="1" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="1" doName="Amp2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="2" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="2" doName="Amp2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="3" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="3" doName="Amp2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="5" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="6" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="7" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="1" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="1" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="2" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="2" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="3" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="3" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="6" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="6" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="4" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="4" doName="Amp2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="4" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="4" doName="Vol2" fc="MX"/>
						</DataSet>
						<DataSet name="IEC60044-8_send_ds1" desc="IEC60044-8发送数据集1">
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="1" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="1" doName="Amp2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="2" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="2" doName="Amp2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="3" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="3" doName="Amp2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="5" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="6" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="7" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="1" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="1" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="2" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="2" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="3" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="3" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="5" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="5" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="4" doName="Amp1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TCTR" lnInst="4" doName="Amp2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="4" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="4" doName="Vol2" fc="MX"/>
						</DataSet>
						<DataSet name="IEC60044-8_recv_ds1" desc="IEC60044-8接收数据集1">
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="10" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="10" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="0" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="0" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="0" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="0" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="14" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="14" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="0" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="0" doName="Vol2" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="0" doName="Vol1" fc="MX"/>
							<FCDA ldInst="MU" lnClass="TVTR" lnInst="0" doName="Vol2" fc="MX"/>
						</DataSet>
						<DOI name="DelayTRtg" desc="1500"/>
						<SampledValueControl name="MSVCB01" desc="" smvID="MU1MU/LLN0$SV$MSVCB01" datSet="MSV9-2_send_ds1" confRev="1" smpRate="80" nofASDU="1">
							<SmvOpts refreshTime="false" sampleSynchronized="true" sampleRate="false" security="false" dataRef="false"/>
						</SampledValueControl>
					</LN0>
					<LN lnClass="LPHD" lnType="2_CN_LPHD" inst="0" desc="装置铭牌信息"/>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="0" desc="无效"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="0" desc="无效">
						<DOI name="Vol1" desc="电压AD1（采样值）"/>
						<DOI name="Vol2" desc="电压AD2（采样值）"/>
					</LN>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="1" desc="A相保护电流">
						<DOI name="Amp1" desc="电流AD1（采样值）"/>
						<DOI name="Amp2" desc="电流AD2（采样值）"/>
					</LN>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="2" desc="B相保护电流">
						<DOI name="Amp1" desc="电流AD1（采样值）"/>
						<DOI name="Amp2" desc="电流AD2（采样值）"/>
					</LN>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="3" desc="C相保护电流">
						<DOI name="Amp1" desc="电流AD1（采样值）"/>
						<DOI name="Amp2" desc="电流AD2（采样值）"/>
					</LN>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="4" desc="中性点电流">
						<DOI name="Amp1" desc="电流AD1（采样值）"/>
						<DOI name="Amp2" desc="电流AD2（采样值）"/>
					</LN>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="5" desc="A相测量电流">
						<DOI name="Amp1" desc="电流AD1（采样值）"/>
					</LN>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="6" desc="B相测量电流">
						<DOI name="Amp1" desc="电流AD1（采样值）"/>
					</LN>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="7" desc="C相测量电流">
						<DOI name="Amp1" desc="电流AD1（采样值）"/>
					</LN>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="1" desc="A相电压">
						<DOI name="Vol1" desc="电压AD1（采样值）"/>
						<DOI name="Vol2" desc="电压AD2（采样值）"/>
					</LN>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="2" desc="B相电压">
						<DOI name="Vol1" desc="电压AD1（采样值）"/>
						<DOI name="Vol2" desc="电压AD2（采样值）"/>
					</LN>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="3" desc="C相电压">
						<DOI name="Vol1" desc="电压AD1（采样值）"/>
						<DOI name="Vol2" desc="电压AD2（采样值）"/>
					</LN>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="4" desc="零序电压">
						<DOI name="Vol1" desc="电压AD1（采样值）"/>
						<DOI name="Vol2" desc="电压AD2（采样值）"/>
					</LN>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="5" desc="母线电压">
						<DOI name="Vol1" desc="电压AD1（采样值）"/>
						<DOI name="Vol2" desc="电压AD2（采样值）"/>
					</LN>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="6" desc="母线A相电压">
						<DOI name="Vol1" desc="电压AD1（采样值）"/>
						<DOI name="Vol2" desc="电压AD2（采样值）"/>
					</LN>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="7" desc="母线B相电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="8" desc="母线C相电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="9" desc="I母电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="10" desc="I母A相电压">
						<DOI name="Vol1" desc="电压AD1（采样值）"/>
						<DOI name="Vol2" desc="电压AD2（采样值）"/>
					</LN>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="11" desc="I母B相电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="12" desc="I母C相电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="13" desc="II母电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="14" desc="II母A相电压">
						<DOI name="Vol1" desc="电压AD1（采样值）"/>
						<DOI name="Vol2" desc="电压AD2（采样值）"/>
					</LN>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="15" desc="II母B相电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="16" desc="II母C相电压"/>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="21" desc="反极性A相保护电流"/>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="22" desc="反极性B相保护电流"/>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="23" desc="反极性C相保护电流"/>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="24" desc="反极性中性点电流"/>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="25" desc="反极性A相测量电流"/>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="26" desc="反极性B相测量电流"/>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="27" desc="反极性C相测量电流"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="21" desc="反极性A相电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="22" desc="反极性B相电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="23" desc="反极性C相电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="24" desc="反极性零序电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="25" desc="反极性母线电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="26" desc="反极性母线A相电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="27" desc="反极性母线B相电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="28" desc="反极性母线C相电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="29" desc="反极性I母电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="30" desc="反极性I母A相电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="31" desc="反极性I母B相电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="32" desc="反极性I母C相电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="33" desc="反极性II母电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="34" desc="反极性II母A相电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="35" desc="反极性II母B相电压"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="36" desc="反极性II母C相电压"/>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="40" desc="无效"/>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="41" desc="无效"/>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="42" desc="无效"/>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="43" desc="无效"/>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="44" desc="无效"/>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="45" desc="无效"/>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="46" desc="无效"/>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="47" desc="无效"/>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="48" desc="无效"/>
					<LN lnClass="TCTR" lnType="2_GNR_TCTR_DOUBLE" inst="49" desc="无效"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="40" desc="无效"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="41" desc="无效"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="42" desc="无效"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="43" desc="无效"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="44" desc="无效"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="45" desc="无效"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="46" desc="无效"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="47" desc="无效"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="48" desc="无效"/>
					<LN lnClass="TVTR" lnType="2_GNR_TVTR_DOUBLE" inst="49" desc="无效"/>
				</LDevice>
			</Server>
		</AccessPoint>
		<AccessPoint name="G1">
			<Server>
				<Authentication/>
				<LDevice inst="GO">
					<LN0 lnClass="LLN0" lnType="2_CN_LLN0" inst="">
						<DataSet name="dsGOOSE0" desc="母线切换信息">
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind3" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind6" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind7" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind12" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind13" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind14" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind15" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind16" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind17" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind18" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind19" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind20" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind21" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind22" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind23" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind24" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind25" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind26" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind27" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind28" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind29" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind30" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind31" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="1" doName="Ind32" daName="stVal" fc="ST"/>
						</DataSet>
						<DataSet name="dsGOOSE1" desc="ECVT状态信息">
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind3" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind6" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind7" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind12" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind13" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind14" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind15" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind16" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind17" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind18" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind19" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind20" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind21" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind22" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind23" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind24" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind25" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind26" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind27" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind28" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind29" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind30" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind31" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="2" doName="Ind32" daName="stVal" fc="ST"/>
						</DataSet>
						<DataSet name="dsGOOSE2" desc="ECVT状态信息">
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind3" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind6" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind7" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind12" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind13" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind14" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind15" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind16" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind17" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind18" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind19" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind20" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind21" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind22" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind23" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind24" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind25" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind26" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind27" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind28" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind29" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind30" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind31" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="3" doName="Ind32" daName="stVal" fc="ST"/>
						</DataSet>
						<DataSet name="dsGOOSE3" desc="ECVT状态信息">
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind3" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind6" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind7" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind12" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind13" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind14" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind15" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind16" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind17" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind18" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind19" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind20" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind21" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind22" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind23" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind24" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind25" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind26" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind27" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind28" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind29" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind30" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind31" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="4" doName="Ind32" daName="stVal" fc="ST"/>
						</DataSet>
						<DataSet name="dsGOOSE4" desc="ECVT状态信息">
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind3" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind6" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind7" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind12" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind13" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind14" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind15" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind16" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind17" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind18" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind19" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind20" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind21" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind22" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind23" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind24" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind25" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind26" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind27" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind28" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind29" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind30" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind31" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="5" doName="Ind32" daName="stVal" fc="ST"/>
						</DataSet>
						<DataSet name="dsGOOSE5" desc="ECVT状态信息">
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind3" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind6" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind7" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind12" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind13" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind14" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind15" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind16" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind17" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind18" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind19" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind20" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind21" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind22" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind23" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind24" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind25" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind26" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind27" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind28" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind29" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind30" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind31" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="6" doName="Ind32" daName="stVal" fc="ST"/>
						</DataSet>
						<DataSet name="dsGOOSE6" desc="ECVT采样信息">
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind3" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind6" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind7" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind12" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind13" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind14" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind15" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind16" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind17" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind18" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind19" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind20" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind21" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind22" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind23" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind24" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind25" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind26" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind27" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind28" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind29" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind30" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind31" daName="stVal" fc="ST"/>
							<FCDA ldInst="GO" prefix="BinOut" lnClass="GGIO" lnInst="7" doName="Ind32" daName="stVal" fc="ST"/>
						</DataSet>
						<GSEControl name="GoCB0" datSet="dsGOOSE0" confRev="1" appID="MU3261GO/LLN0$GO$GoCB0">
							<Private type="NARITECH-IsDoubleNet">0</Private>
							<Private type="NARITECH-NetCardNoA">0</Private>
							<Private type="NARITECH-NetCardNoB">1</Private>
						</GSEControl>
					</LN0>
					<LN lnClass="LPHD" lnType="2_CN_LPHD" inst="0" desc="装置铭牌信息"/>
					<LN prefix="BinIn" lnClass="GGIO" lnType="2_GNR_GGIO_DPC8_Ind16" inst="0" desc="开关遥信接入">
						<DOI name="DPCSO1" desc="I母(PT)刀闸双遥信">
							<DAI name="stVal" sAddr="130.1.0.0"/>
							<DAI name="q" sAddr="130.2.0.0"/>
							<DAI name="t" sAddr="130.3.0.0"/>
							<DAI name="dU" sAddr="I母(PT)刀闸双遥信"/>
						</DOI>
						<DOI name="DPCSO2" desc="II母(PT)刀闸双遥信">
							<DAI name="stVal" sAddr="130.1.1.0"/>
							<DAI name="q" sAddr="130.2.1.0"/>
							<DAI name="t" sAddr="130.3.1.0"/>
							<DAI name="dU" sAddr="II母(PT)刀闸双遥信"/>
						</DOI>
						<DOI name="DPCSO3" desc="母联开关双遥信">
							<DAI name="stVal" sAddr="130.1.2.0"/>
							<DAI name="q" sAddr="130.2.2.0"/>
							<DAI name="t" sAddr="130.3.2.0"/>
							<DAI name="dU" sAddr="母联开关双遥信"/>
						</DOI>
						<DOI name="DPCSO4" desc="母联PT1刀闸双遥信">
							<DAI name="stVal" sAddr="130.1.3.0"/>
							<DAI name="q" sAddr="130.2.3.0"/>
							<DAI name="t" sAddr="130.3.3.0"/>
							<DAI name="dU" sAddr="母联PT1刀闸双遥信"/>
						</DOI>
						<DOI name="DPCSO5" desc="母联PT2刀闸双遥信">
							<DAI name="stVal" sAddr="130.1.4.0"/>
							<DAI name="q" sAddr="130.2.4.0"/>
							<DAI name="t" sAddr="130.3.4.0"/>
							<DAI name="dU" sAddr="母联PT2刀闸双遥信"/>
						</DOI>
						<DOI name="DPCSO6" desc="双遥信6">
							<DAI name="stVal" sAddr="130.1.5.0"/>
							<DAI name="q" sAddr="130.2.5.0"/>
							<DAI name="t" sAddr="130.3.5.0"/>
							<DAI name="dU" sAddr="双遥信6"/>
						</DOI>
						<DOI name="DPCSO7" desc="双遥信7">
							<DAI name="stVal" sAddr="130.1.6.0"/>
							<DAI name="q" sAddr="130.2.6.0"/>
							<DAI name="t" sAddr="130.3.6.0"/>
							<DAI name="dU" sAddr="双遥信7"/>
						</DOI>
						<DOI name="DPCSO8" desc="双遥信8">
							<DAI name="stVal" sAddr="130.1.7.0"/>
							<DAI name="q" sAddr="130.2.7.0"/>
							<DAI name="t" sAddr="130.3.7.0"/>
							<DAI name="dU" sAddr="双遥信8"/>
						</DOI>
						<DOI name="Ind1" desc="I母(PT)刀闸单遥信">
							<DAI name="stVal" sAddr="129.1.0.0"/>
							<DAI name="q" sAddr="129.2.0.0"/>
							<DAI name="t" sAddr="129.3.0.0"/>
							<DAI name="dU" sAddr="I母(PT)刀闸单遥信"/>
						</DOI>
						<DOI name="Ind2" desc="II母(PT)刀闸单遥信">
							<DAI name="stVal" sAddr="129.1.1.0"/>
							<DAI name="q" sAddr="129.2.1.0"/>
							<DAI name="t" sAddr="129.3.1.0"/>
							<DAI name="dU" sAddr="II母(PT)刀闸单遥信"/>
						</DOI>
						<DOI name="Ind3" desc="母联开关单遥信">
							<DAI name="stVal" sAddr="129.1.2.0"/>
							<DAI name="q" sAddr="129.2.2.0"/>
							<DAI name="t" sAddr="129.3.2.0"/>
							<DAI name="dU" sAddr="母联开关单遥信"/>
						</DOI>
						<DOI name="Ind4" desc="母联PT1刀闸单遥信">
							<DAI name="stVal" sAddr="129.1.3.0"/>
							<DAI name="q" sAddr="129.2.3.0"/>
							<DAI name="t" sAddr="129.3.3.0"/>
							<DAI name="dU" sAddr="母联PT1刀闸单遥信"/>
						</DOI>
						<DOI name="Ind5" desc="母联PT2刀闸单遥信">
							<DAI name="stVal" sAddr="129.1.4.0"/>
							<DAI name="q" sAddr="129.2.4.0"/>
							<DAI name="t" sAddr="129.3.4.0"/>
							<DAI name="dU" sAddr="母联PT2刀闸单遥信"/>
						</DOI>
						<DOI name="Ind6" desc="单遥信6">
							<DAI name="stVal" sAddr="129.1.5.0"/>
							<DAI name="q" sAddr="129.2.5.0"/>
							<DAI name="t" sAddr="129.3.5.0"/>
							<DAI name="dU" sAddr="单遥信6"/>
						</DOI>
						<DOI name="Ind7" desc="单遥信7">
							<DAI name="stVal" sAddr="129.1.6.0"/>
							<DAI name="q" sAddr="129.2.6.0"/>
							<DAI name="t" sAddr="129.3.6.0"/>
							<DAI name="dU" sAddr="单遥信7"/>
						</DOI>
						<DOI name="Ind8" desc="单遥信8">
							<DAI name="stVal" sAddr="129.1.7.0"/>
							<DAI name="q" sAddr="129.2.7.0"/>
							<DAI name="t" sAddr="129.3.7.0"/>
							<DAI name="dU" sAddr="单遥信8"/>
						</DOI>
						<DOI name="Ind9" desc="并I母电压命令">
							<DAI name="stVal" sAddr="129.1.8.0"/>
							<DAI name="q" sAddr="129.2.8.0"/>
							<DAI name="t" sAddr="129.3.8.0"/>
							<DAI name="dU" sAddr="并I母电压命令"/>
						</DOI>
						<DOI name="Ind10" desc="并II母电压命令">
							<DAI name="stVal" sAddr="129.1.9.0"/>
							<DAI name="q" sAddr="129.2.9.0"/>
							<DAI name="t" sAddr="129.3.9.0"/>
							<DAI name="dU" sAddr="并II母电压命令"/>
						</DOI>
						<DOI name="Ind11" desc="解列命令">
							<DAI name="stVal" sAddr="129.1.10.0"/>
							<DAI name="q" sAddr="129.2.10.0"/>
							<DAI name="t" sAddr="129.3.10.0"/>
							<DAI name="dU" sAddr="解列命令"/>
						</DOI>
						<DOI name="Ind12" desc="单遥信12">
							<DAI name="stVal" sAddr="129.1.11.0"/>
							<DAI name="q" sAddr="129.2.11.0"/>
							<DAI name="t" sAddr="129.3.11.0"/>
							<DAI name="dU" sAddr="单遥信12"/>
						</DOI>
						<DOI name="Ind13" desc="单遥信13">
							<DAI name="stVal" sAddr="129.1.12.0"/>
							<DAI name="q" sAddr="129.2.12.0"/>
							<DAI name="t" sAddr="129.3.12.0"/>
							<DAI name="dU" sAddr="单遥信13"/>
						</DOI>
						<DOI name="Ind14" desc="单遥信14">
							<DAI name="stVal" sAddr="129.1.13.0"/>
							<DAI name="q" sAddr="129.2.13.0"/>
							<DAI name="t" sAddr="129.3.13.0"/>
							<DAI name="dU" sAddr="单遥信14"/>
						</DOI>
						<DOI name="Ind15" desc="单遥信15">
							<DAI name="stVal" sAddr="129.1.14.0"/>
							<DAI name="q" sAddr="129.2.14.0"/>
							<DAI name="t" sAddr="129.3.14.0"/>
							<DAI name="dU" sAddr="单遥信15"/>
						</DOI>
						<DOI name="Ind16" desc="单遥信16">
							<DAI name="stVal" sAddr="129.1.15.0"/>
							<DAI name="q" sAddr="129.2.15.0"/>
							<DAI name="t" sAddr="129.3.15.0"/>
							<DAI name="dU" sAddr="单遥信16"/>
						</DOI>
					</LN>
					<LN prefix="BinOut" lnClass="GGIO" lnType="2_GNR_GGIO_Ind32" inst="1" desc="开关遥信上送">
						<DOI name="Ind1" desc="取I母电压成功">
							<DAI name="stVal" sAddr="1.1.0.0"/>
							<DAI name="q" sAddr="1.2.0.0"/>
							<DAI name="t" sAddr="1.3.0.0"/>
							<DAI name="dU" sAddr="取I母电压成功"/>
						</DOI>
						<DOI name="Ind2" desc="取II母电压成功">
							<DAI name="stVal" sAddr="1.1.1.0"/>
							<DAI name="q" sAddr="1.2.1.0"/>
							<DAI name="t" sAddr="1.3.1.0"/>
							<DAI name="dU" sAddr="取II母电压成功"/>
						</DOI>
						<DOI name="Ind3" desc="解列成功">
							<DAI name="stVal" sAddr="1.1.2.0"/>
							<DAI name="q" sAddr="1.2.2.0"/>
							<DAI name="t" sAddr="1.3.2.0"/>
							<DAI name="dU" sAddr="解列成功"/>
						</DOI>
						<DOI name="Ind4" desc="并列/解列命令错误">
							<DAI name="stVal" sAddr="1.1.3.0"/>
							<DAI name="q" sAddr="1.2.3.0"/>
							<DAI name="t" sAddr="1.3.3.0"/>
							<DAI name="dU" sAddr="并列/解列命令错误"/>
						</DOI>
						<DOI name="Ind5" desc="装置检修">
							<DAI name="stVal" sAddr="1.1.4.0"/>
							<DAI name="q" sAddr="1.2.4.0"/>
							<DAI name="t" sAddr="1.3.4.0"/>
							<DAI name="dU" sAddr="装置检修"/>
						</DOI>
						<DOI name="Ind6" desc="I母(PT)刀闸位置异常">
							<DAI name="stVal" sAddr="1.1.5.0"/>
							<DAI name="q" sAddr="1.2.5.0"/>
							<DAI name="t" sAddr="1.3.5.0"/>
							<DAI name="dU" sAddr="I母(PT)刀闸位置异常"/>
						</DOI>
						<DOI name="Ind7" desc="II母(PT)刀闸位置异常">
							<DAI name="stVal" sAddr="1.1.6.0"/>
							<DAI name="q" sAddr="1.2.6.0"/>
							<DAI name="t" sAddr="1.3.6.0"/>
							<DAI name="dU" sAddr="II母(PT)刀闸位置异常"/>
						</DOI>
						<DOI name="Ind8" desc="母联开关位置异常">
							<DAI name="stVal" sAddr="1.1.7.0"/>
							<DAI name="q" sAddr="1.2.7.0"/>
							<DAI name="t" sAddr="1.3.7.0"/>
							<DAI name="dU" sAddr="母联开关位置异常"/>
						</DOI>
						<DOI name="Ind9" desc="遥信9">
							<DAI name="stVal" sAddr="1.1.8.0"/>
							<DAI name="q" sAddr="1.2.8.0"/>
							<DAI name="t" sAddr="1.3.8.0"/>
							<DAI name="dU" sAddr="遥信9"/>
						</DOI>
						<DOI name="Ind10" desc="GOOSE网1中断">
							<DAI name="stVal" sAddr="1.1.9.0"/>
							<DAI name="q" sAddr="1.2.9.0"/>
							<DAI name="t" sAddr="1.3.9.0"/>
							<DAI name="dU" sAddr="GOOSE网1中断"/>
						</DOI>
						<DOI name="Ind11" desc="GOOSE网2中断">
							<DAI name="stVal" sAddr="1.1.10.0"/>
							<DAI name="q" sAddr="1.2.10.0"/>
							<DAI name="t" sAddr="1.3.10.0"/>
							<DAI name="dU" sAddr="GOOSE网2中断"/>
						</DOI>
						<DOI name="Ind12" desc="遥信12">
							<DAI name="stVal" sAddr="1.1.11.0"/>
							<DAI name="q" sAddr="1.2.11.0"/>
							<DAI name="t" sAddr="1.3.11.0"/>
							<DAI name="dU" sAddr="遥信12"/>
						</DOI>
						<DOI name="Ind13" desc="遥信13">
							<DAI name="stVal" sAddr="1.1.12.0"/>
							<DAI name="q" sAddr="1.2.12.0"/>
							<DAI name="t" sAddr="1.3.12.0"/>
							<DAI name="dU" sAddr="遥信13"/>
						</DOI>
						<DOI name="Ind14" desc="装置告警">
							<DAI name="stVal" sAddr="1.1.13.0"/>
							<DAI name="q" sAddr="1.2.13.0"/>
							<DAI name="t" sAddr="1.3.13.0"/>
							<DAI name="dU" sAddr="装置告警"/>
						</DOI>
						<DOI name="Ind15" desc="装置远方">
							<DAI name="stVal" sAddr="1.1.14.0"/>
							<DAI name="q" sAddr="1.2.14.0"/>
							<DAI name="t" sAddr="1.3.14.0"/>
							<DAI name="dU" sAddr="装置远方"/>
						</DOI>
						<DOI name="Ind16" desc="遥信16">
							<DAI name="stVal" sAddr="1.1.15.0"/>
							<DAI name="q" sAddr="1.2.15.0"/>
							<DAI name="t" sAddr="1.3.15.0"/>
							<DAI name="dU" sAddr="遥信16"/>
						</DOI>
						<DOI name="Ind17" desc="母联PT1刀闸位置异常">
							<DAI name="stVal" sAddr="1.1.16.0"/>
							<DAI name="q" sAddr="1.2.16.0"/>
							<DAI name="t" sAddr="1.3.16.0"/>
							<DAI name="dU" sAddr="母联PT1刀闸位置异常"/>
						</DOI>
						<DOI name="Ind18" desc="母联PT2刀闸位置异常">
							<DAI name="stVal" sAddr="1.1.17.0"/>
							<DAI name="q" sAddr="1.2.17.0"/>
							<DAI name="t" sAddr="1.3.17.0"/>
							<DAI name="dU" sAddr="母联PT2刀闸位置异常"/>
						</DOI>
						<DOI name="Ind19" desc="遥信19">
							<DAI name="stVal" sAddr="1.1.18.0"/>
							<DAI name="q" sAddr="1.2.18.0"/>
							<DAI name="t" sAddr="1.3.18.0"/>
							<DAI name="dU" sAddr="遥信19"/>
						</DOI>
						<DOI name="Ind20" desc="遥信20">
							<DAI name="stVal" sAddr="1.1.19.0"/>
							<DAI name="q" sAddr="1.2.19.0"/>
							<DAI name="t" sAddr="1.3.19.0"/>
							<DAI name="dU" sAddr="遥信20"/>
						</DOI>
						<DOI name="Ind21" desc="遥信21">
							<DAI name="stVal" sAddr="1.1.20.0"/>
							<DAI name="q" sAddr="1.2.20.0"/>
							<DAI name="t" sAddr="1.3.20.0"/>
							<DAI name="dU" sAddr="遥信21"/>
						</DOI>
						<DOI name="Ind22" desc="遥信22">
							<DAI name="stVal" sAddr="1.1.21.0"/>
							<DAI name="q" sAddr="1.2.21.0"/>
							<DAI name="t" sAddr="1.3.21.0"/>
							<DAI name="dU" sAddr="遥信22"/>
						</DOI>
						<DOI name="Ind23" desc="采样异常">
							<DAI name="stVal" sAddr="1.1.22.0"/>
							<DAI name="q" sAddr="1.2.22.0"/>
							<DAI name="t" sAddr="1.3.22.0"/>
							<DAI name="dU" sAddr="采样异常"/>
						</DOI>
						<DOI name="Ind24" desc="采样失步">
							<DAI name="stVal" sAddr="1.1.23.0"/>
							<DAI name="q" sAddr="1.2.23.0"/>
							<DAI name="t" sAddr="1.3.23.0"/>
							<DAI name="dU" sAddr="采样失步"/>
						</DOI>
						<DOI name="Ind25" desc="GOOSE I母(PT)刀闸遥信检修">
							<DAI name="stVal" sAddr="1.1.24.0"/>
							<DAI name="q" sAddr="1.2.24.0"/>
							<DAI name="t" sAddr="1.3.24.0"/>
							<DAI name="dU" sAddr="GOOSE I母(PT)刀闸遥信检修"/>
						</DOI>
						<DOI name="Ind26" desc="GOOSE II母(PT)刀闸遥信检修">
							<DAI name="stVal" sAddr="1.1.25.0"/>
							<DAI name="q" sAddr="1.2.25.0"/>
							<DAI name="t" sAddr="1.3.25.0"/>
							<DAI name="dU" sAddr="GOOSE II母(PT)刀闸遥信检修"/>
						</DOI>
						<DOI name="Ind27" desc="GOOSE 母联开关遥信检修">
							<DAI name="stVal" sAddr="1.1.26.0"/>
							<DAI name="q" sAddr="1.2.26.0"/>
							<DAI name="t" sAddr="1.3.26.0"/>
							<DAI name="dU" sAddr="GOOSE 母联开关遥信检修"/>
						</DOI>
						<DOI name="Ind28" desc="GOOSE 母联PT1刀闸遥信检修">
							<DAI name="stVal" sAddr="1.1.27.0"/>
							<DAI name="q" sAddr="1.2.27.0"/>
							<DAI name="t" sAddr="1.3.27.0"/>
							<DAI name="dU" sAddr="GOOSE 母联PT1刀闸遥信检修"/>
						</DOI>
						<DOI name="Ind29" desc="GOOSE 母联PT2刀闸遥信检修">
							<DAI name="stVal" sAddr="1.1.28.0"/>
							<DAI name="q" sAddr="1.2.28.0"/>
							<DAI name="t" sAddr="1.3.28.0"/>
							<DAI name="dU" sAddr="GOOSE 母联PT2刀闸遥信检修"/>
						</DOI>
						<DOI name="Ind30" desc="GOOSE 取I母电压命令遥信检修">
							<DAI name="stVal" sAddr="1.1.29.0"/>
							<DAI name="q" sAddr="1.2.29.0"/>
							<DAI name="t" sAddr="1.3.29.0"/>
							<DAI name="dU" sAddr="GOOSE 取I母电压命令遥信检修"/>
						</DOI>
						<DOI name="Ind31" desc="GOOSE 取II母电压命令遥信检修">
							<DAI name="stVal" sAddr="1.1.30.0"/>
							<DAI name="q" sAddr="1.2.30.0"/>
							<DAI name="t" sAddr="1.3.30.0"/>
							<DAI name="dU" sAddr="GOOSE 取II母电压命令遥信检修"/>
						</DOI>
						<DOI name="Ind32" desc="GOOSE 解列命令遥信检修">
							<DAI name="stVal" sAddr="1.1.31.0"/>
							<DAI name="q" sAddr="1.2.31.0"/>
							<DAI name="t" sAddr="1.3.31.0"/>
							<DAI name="dU" sAddr="GOOSE 解列命令遥信检修"/>
						</DOI>
					</LN>
					<LN prefix="BinOut" lnClass="GGIO" lnType="2_GNR_GGIO_Ind32" inst="2" desc="开关遥信上送">
						<DOI name="Ind1" desc="A相保护电流1数据无效">
							<DAI name="stVal" sAddr="1.1.32.0"/>
							<DAI name="q" sAddr="1.2.32.0"/>
							<DAI name="t" sAddr="1.3.32.0"/>
							<DAI name="dU" sAddr="A相保护电流1数据无效"/>
						</DOI>
						<DOI name="Ind2" desc="A相保护电流1光路故障">
							<DAI name="stVal" sAddr="1.1.33.0"/>
							<DAI name="q" sAddr="1.2.33.0"/>
							<DAI name="t" sAddr="1.3.33.0"/>
							<DAI name="dU" sAddr="A相保护电流1光路故障"/>
						</DOI>
						<DOI name="Ind3" desc="A相保护电流1电路故障">
							<DAI name="stVal" sAddr="1.1.34.0"/>
							<DAI name="q" sAddr="1.2.34.0"/>
							<DAI name="t" sAddr="1.3.34.0"/>
							<DAI name="dU" sAddr="A相保护电流1电路故障"/>
						</DOI>
						<DOI name="Ind4" desc="A相保护电流1AD采样故障">
							<DAI name="stVal" sAddr="1.1.35.0"/>
							<DAI name="q" sAddr="1.2.35.0"/>
							<DAI name="t" sAddr="1.3.35.0"/>
							<DAI name="dU" sAddr="A相保护电流1AD采样故障"/>
						</DOI>
						<DOI name="Ind5" desc="B相保护电流1数据无效">
							<DAI name="stVal" sAddr="1.1.36.0"/>
							<DAI name="q" sAddr="1.2.36.0"/>
							<DAI name="t" sAddr="1.3.36.0"/>
							<DAI name="dU" sAddr="B相保护电流1数据无效"/>
						</DOI>
						<DOI name="Ind6" desc="B相保护电流1光路故障">
							<DAI name="stVal" sAddr="1.1.37.0"/>
							<DAI name="q" sAddr="1.2.37.0"/>
							<DAI name="t" sAddr="1.3.37.0"/>
							<DAI name="dU" sAddr="B相保护电流1光路故障"/>
						</DOI>
						<DOI name="Ind7" desc="B相保护电流1电路故障">
							<DAI name="stVal" sAddr="1.1.38.0"/>
							<DAI name="q" sAddr="1.2.38.0"/>
							<DAI name="t" sAddr="1.3.38.0"/>
							<DAI name="dU" sAddr="B相保护电流1电路故障"/>
						</DOI>
						<DOI name="Ind8" desc="B相保护电流1AD采样故障">
							<DAI name="stVal" sAddr="1.1.39.0"/>
							<DAI name="q" sAddr="1.2.39.0"/>
							<DAI name="t" sAddr="1.3.39.0"/>
							<DAI name="dU" sAddr="B相保护电流1AD采样故障"/>
						</DOI>
						<DOI name="Ind9" desc="C相保护电流1数据无效">
							<DAI name="stVal" sAddr="1.1.40.0"/>
							<DAI name="q" sAddr="1.2.40.0"/>
							<DAI name="t" sAddr="1.3.40.0"/>
							<DAI name="dU" sAddr="C相保护电流1数据无效"/>
						</DOI>
						<DOI name="Ind10" desc="C相保护电流1光路故障">
							<DAI name="stVal" sAddr="1.1.41.0"/>
							<DAI name="q" sAddr="1.2.41.0"/>
							<DAI name="t" sAddr="1.3.41.0"/>
							<DAI name="dU" sAddr="C相保护电流1光路故障"/>
						</DOI>
						<DOI name="Ind11" desc="C相保护电流1电路故障">
							<DAI name="stVal" sAddr="1.1.42.0"/>
							<DAI name="q" sAddr="1.2.42.0"/>
							<DAI name="t" sAddr="1.3.42.0"/>
							<DAI name="dU" sAddr="C相保护电流1电路故障"/>
						</DOI>
						<DOI name="Ind12" desc="C相保护电流1AD采样故障">
							<DAI name="stVal" sAddr="1.1.43.0"/>
							<DAI name="q" sAddr="1.2.43.0"/>
							<DAI name="t" sAddr="1.3.43.0"/>
							<DAI name="dU" sAddr="C相保护电流1AD采样故障"/>
						</DOI>
						<DOI name="Ind13" desc="中性点电流1数据无效">
							<DAI name="stVal" sAddr="1.1.44.0"/>
							<DAI name="q" sAddr="1.2.44.0"/>
							<DAI name="t" sAddr="1.3.44.0"/>
							<DAI name="dU" sAddr="中性点电流1数据无效"/>
						</DOI>
						<DOI name="Ind14" desc="中性点电流1光路故障">
							<DAI name="stVal" sAddr="1.1.45.0"/>
							<DAI name="q" sAddr="1.2.45.0"/>
							<DAI name="t" sAddr="1.3.45.0"/>
							<DAI name="dU" sAddr="中性点电流1光路故障"/>
						</DOI>
						<DOI name="Ind15" desc="中性点电流1电路故障">
							<DAI name="stVal" sAddr="1.1.46.0"/>
							<DAI name="q" sAddr="1.2.46.0"/>
							<DAI name="t" sAddr="1.3.46.0"/>
							<DAI name="dU" sAddr="中性点电流1电路故障"/>
						</DOI>
						<DOI name="Ind16" desc="中性点电流1AD采样故障">
							<DAI name="stVal" sAddr="1.1.47.0"/>
							<DAI name="q" sAddr="1.2.47.0"/>
							<DAI name="t" sAddr="1.3.47.0"/>
							<DAI name="dU" sAddr="中性点电流1AD采样故障"/>
						</DOI>
						<DOI name="Ind17" desc="A相测量电流1数据无效">
							<DAI name="stVal" sAddr="1.1.48.0"/>
							<DAI name="q" sAddr="1.2.48.0"/>
							<DAI name="t" sAddr="1.3.48.0"/>
							<DAI name="dU" sAddr="A相测量电流1数据无效"/>
						</DOI>
						<DOI name="Ind18" desc="A相测量电流1光路故障">
							<DAI name="stVal" sAddr="1.1.49.0"/>
							<DAI name="q" sAddr="1.2.49.0"/>
							<DAI name="t" sAddr="1.3.49.0"/>
							<DAI name="dU" sAddr="A相测量电流1光路故障"/>
						</DOI>
						<DOI name="Ind19" desc="A相测量电流1电路故障">
							<DAI name="stVal" sAddr="1.1.50.0"/>
							<DAI name="q" sAddr="1.2.50.0"/>
							<DAI name="t" sAddr="1.3.50.0"/>
							<DAI name="dU" sAddr="A相测量电流1电路故障"/>
						</DOI>
						<DOI name="Ind20" desc="A相测量电流1AD采样故障">
							<DAI name="stVal" sAddr="1.1.51.0"/>
							<DAI name="q" sAddr="1.2.51.0"/>
							<DAI name="t" sAddr="1.3.51.0"/>
							<DAI name="dU" sAddr="A相测量电流1AD采样故障"/>
						</DOI>
						<DOI name="Ind21" desc="B相测量电流1数据无效">
							<DAI name="stVal" sAddr="1.1.52.0"/>
							<DAI name="q" sAddr="1.2.52.0"/>
							<DAI name="t" sAddr="1.3.52.0"/>
							<DAI name="dU" sAddr="B相测量电流1数据无效"/>
						</DOI>
						<DOI name="Ind22" desc="B相测量电流1光路故障">
							<DAI name="stVal" sAddr="1.1.53.0"/>
							<DAI name="q" sAddr="1.2.53.0"/>
							<DAI name="t" sAddr="1.3.53.0"/>
							<DAI name="dU" sAddr="B相测量电流1光路故障"/>
						</DOI>
						<DOI name="Ind23" desc="B相测量电流1电路故障">
							<DAI name="stVal" sAddr="1.1.54.0"/>
							<DAI name="q" sAddr="1.2.54.0"/>
							<DAI name="t" sAddr="1.3.54.0"/>
							<DAI name="dU" sAddr="B相测量电流1电路故障"/>
						</DOI>
						<DOI name="Ind24" desc="B相测量电流1AD采样故障">
							<DAI name="stVal" sAddr="1.1.55.0"/>
							<DAI name="q" sAddr="1.2.55.0"/>
							<DAI name="t" sAddr="1.3.55.0"/>
							<DAI name="dU" sAddr="B相测量电流1AD采样故障"/>
						</DOI>
						<DOI name="Ind25" desc="C相测量电流1数据无效">
							<DAI name="stVal" sAddr="1.1.56.0"/>
							<DAI name="q" sAddr="1.2.56.0"/>
							<DAI name="t" sAddr="1.3.56.0"/>
							<DAI name="dU" sAddr="C相测量电流1数据无效"/>
						</DOI>
						<DOI name="Ind26" desc="C相测量电流1光路故障">
							<DAI name="stVal" sAddr="1.1.57.0"/>
							<DAI name="q" sAddr="1.2.57.0"/>
							<DAI name="t" sAddr="1.3.57.0"/>
							<DAI name="dU" sAddr="C相测量电流1光路故障"/>
						</DOI>
						<DOI name="Ind27" desc="C相测量电流1电路故障">
							<DAI name="stVal" sAddr="1.1.58.0"/>
							<DAI name="q" sAddr="1.2.58.0"/>
							<DAI name="t" sAddr="1.3.58.0"/>
							<DAI name="dU" sAddr="C相测量电流1电路故障"/>
						</DOI>
						<DOI name="Ind28" desc="C相测量电流1AD采样故障">
							<DAI name="stVal" sAddr="1.1.59.0"/>
							<DAI name="q" sAddr="1.2.59.0"/>
							<DAI name="t" sAddr="1.3.59.0"/>
							<DAI name="dU" sAddr="C相测量电流1AD采样故障"/>
						</DOI>
						<DOI name="Ind29" desc="A相电压1数据无效">
							<DAI name="stVal" sAddr="1.1.60.0"/>
							<DAI name="q" sAddr="1.2.60.0"/>
							<DAI name="t" sAddr="1.3.60.0"/>
							<DAI name="dU" sAddr="A相电压1数据无效"/>
						</DOI>
						<DOI name="Ind30" desc="A相电压1光路故障">
							<DAI name="stVal" sAddr="1.1.61.0"/>
							<DAI name="q" sAddr="1.2.61.0"/>
							<DAI name="t" sAddr="1.3.61.0"/>
							<DAI name="dU" sAddr="A相电压1光路故障"/>
						</DOI>
						<DOI name="Ind31" desc="A相电压1电路故障">
							<DAI name="stVal" sAddr="1.1.62.0"/>
							<DAI name="q" sAddr="1.2.62.0"/>
							<DAI name="t" sAddr="1.3.62.0"/>
							<DAI name="dU" sAddr="A相电压1电路故障"/>
						</DOI>
						<DOI name="Ind32" desc="A相电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.63.0"/>
							<DAI name="q" sAddr="1.2.63.0"/>
							<DAI name="t" sAddr="1.3.63.0"/>
							<DAI name="dU" sAddr="A相电压1AD采样故障"/>
						</DOI>
					</LN>
					<LN prefix="BinOut" lnClass="GGIO" lnType="2_GNR_GGIO_Ind32" inst="3" desc="开关遥信上送">
						<DOI name="Ind1" desc="B相电压1数据无效">
							<DAI name="stVal" sAddr="1.1.64.0"/>
							<DAI name="q" sAddr="1.2.64.0"/>
							<DAI name="t" sAddr="1.3.64.0"/>
							<DAI name="dU" sAddr="B相电压1数据无效"/>
						</DOI>
						<DOI name="Ind2" desc="B相电压1光路故障">
							<DAI name="stVal" sAddr="1.1.65.0"/>
							<DAI name="q" sAddr="1.2.65.0"/>
							<DAI name="t" sAddr="1.3.65.0"/>
							<DAI name="dU" sAddr="B相电压1光路故障"/>
						</DOI>
						<DOI name="Ind3" desc="B相电压1电路故障">
							<DAI name="stVal" sAddr="1.1.66.0"/>
							<DAI name="q" sAddr="1.2.66.0"/>
							<DAI name="t" sAddr="1.3.66.0"/>
							<DAI name="dU" sAddr="B相电压1电路故障"/>
						</DOI>
						<DOI name="Ind4" desc="B相电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.67.0"/>
							<DAI name="q" sAddr="1.2.67.0"/>
							<DAI name="t" sAddr="1.3.67.0"/>
							<DAI name="dU" sAddr="B相电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind5" desc="C相电压1数据无效">
							<DAI name="stVal" sAddr="1.1.68.0"/>
							<DAI name="q" sAddr="1.2.68.0"/>
							<DAI name="t" sAddr="1.3.68.0"/>
							<DAI name="dU" sAddr="C相电压1数据无效"/>
						</DOI>
						<DOI name="Ind6" desc="C相电压1光路故障">
							<DAI name="stVal" sAddr="1.1.69.0"/>
							<DAI name="q" sAddr="1.2.69.0"/>
							<DAI name="t" sAddr="1.3.69.0"/>
							<DAI name="dU" sAddr="C相电压1光路故障"/>
						</DOI>
						<DOI name="Ind7" desc="C相电压1电路故障">
							<DAI name="stVal" sAddr="1.1.70.0"/>
							<DAI name="q" sAddr="1.2.70.0"/>
							<DAI name="t" sAddr="1.3.70.0"/>
							<DAI name="dU" sAddr="C相电压1电路故障"/>
						</DOI>
						<DOI name="Ind8" desc="C相电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.71.0"/>
							<DAI name="q" sAddr="1.2.71.0"/>
							<DAI name="t" sAddr="1.3.71.0"/>
							<DAI name="dU" sAddr="C相电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind9" desc="零序电压1数据无效">
							<DAI name="stVal" sAddr="1.1.72.0"/>
							<DAI name="q" sAddr="1.2.72.0"/>
							<DAI name="t" sAddr="1.3.72.0"/>
							<DAI name="dU" sAddr="零序电压1数据无效"/>
						</DOI>
						<DOI name="Ind10" desc="零序电压1光路故障">
							<DAI name="stVal" sAddr="1.1.73.0"/>
							<DAI name="q" sAddr="1.2.73.0"/>
							<DAI name="t" sAddr="1.3.73.0"/>
							<DAI name="dU" sAddr="零序电压1光路故障"/>
						</DOI>
						<DOI name="Ind11" desc="零序电压1电路故障">
							<DAI name="stVal" sAddr="1.1.74.0"/>
							<DAI name="q" sAddr="1.2.74.0"/>
							<DAI name="t" sAddr="1.3.74.0"/>
							<DAI name="dU" sAddr="零序电压1电路故障"/>
						</DOI>
						<DOI name="Ind12" desc="零序电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.75.0"/>
							<DAI name="q" sAddr="1.2.75.0"/>
							<DAI name="t" sAddr="1.3.75.0"/>
							<DAI name="dU" sAddr="零序电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind13" desc="I母电压1数据无效">
							<DAI name="stVal" sAddr="1.1.76.0"/>
							<DAI name="q" sAddr="1.2.76.0"/>
							<DAI name="t" sAddr="1.3.76.0"/>
							<DAI name="dU" sAddr="I母电压1数据无效"/>
						</DOI>
						<DOI name="Ind14" desc="I母电压1光路故障">
							<DAI name="stVal" sAddr="1.1.77.0"/>
							<DAI name="q" sAddr="1.2.77.0"/>
							<DAI name="t" sAddr="1.3.77.0"/>
							<DAI name="dU" sAddr="I母电压1光路故障"/>
						</DOI>
						<DOI name="Ind15" desc="I母电压1电路故障">
							<DAI name="stVal" sAddr="1.1.78.0"/>
							<DAI name="q" sAddr="1.2.78.0"/>
							<DAI name="t" sAddr="1.3.78.0"/>
							<DAI name="dU" sAddr="I母电压1电路故障"/>
						</DOI>
						<DOI name="Ind16" desc="I母电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.79.0"/>
							<DAI name="q" sAddr="1.2.79.0"/>
							<DAI name="t" sAddr="1.3.79.0"/>
							<DAI name="dU" sAddr="I母电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind17" desc="I母A相电压1数据无效">
							<DAI name="stVal" sAddr="1.1.80.0"/>
							<DAI name="q" sAddr="1.2.80.0"/>
							<DAI name="t" sAddr="1.3.80.0"/>
							<DAI name="dU" sAddr="I母A相电压1数据无效"/>
						</DOI>
						<DOI name="Ind18" desc="I母A相电压1光路故障">
							<DAI name="stVal" sAddr="1.1.81.0"/>
							<DAI name="q" sAddr="1.2.81.0"/>
							<DAI name="t" sAddr="1.3.81.0"/>
							<DAI name="dU" sAddr="I母A相电压1光路故障"/>
						</DOI>
						<DOI name="Ind19" desc="I母A相电压1电路故障">
							<DAI name="stVal" sAddr="1.1.82.0"/>
							<DAI name="q" sAddr="1.2.82.0"/>
							<DAI name="t" sAddr="1.3.82.0"/>
							<DAI name="dU" sAddr="I母A相电压1电路故障"/>
						</DOI>
						<DOI name="Ind20" desc="I母A相电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.83.0"/>
							<DAI name="q" sAddr="1.2.83.0"/>
							<DAI name="t" sAddr="1.3.83.0"/>
							<DAI name="dU" sAddr="I母A相电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind21" desc="I母B相电压1数据无效">
							<DAI name="stVal" sAddr="1.1.84.0"/>
							<DAI name="q" sAddr="1.2.84.0"/>
							<DAI name="t" sAddr="1.3.84.0"/>
							<DAI name="dU" sAddr="I母B相电压1数据无效"/>
						</DOI>
						<DOI name="Ind22" desc="I母B相电压1光路故障">
							<DAI name="stVal" sAddr="1.1.85.0"/>
							<DAI name="q" sAddr="1.2.85.0"/>
							<DAI name="t" sAddr="1.3.85.0"/>
							<DAI name="dU" sAddr="I母B相电压1光路故障"/>
						</DOI>
						<DOI name="Ind23" desc="I母B相电压1电路故障">
							<DAI name="stVal" sAddr="1.1.86.0"/>
							<DAI name="q" sAddr="1.2.86.0"/>
							<DAI name="t" sAddr="1.3.86.0"/>
							<DAI name="dU" sAddr="I母B相电压1电路故障"/>
						</DOI>
						<DOI name="Ind24" desc="I母B相电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.87.0"/>
							<DAI name="q" sAddr="1.2.87.0"/>
							<DAI name="t" sAddr="1.3.87.0"/>
							<DAI name="dU" sAddr="I母B相电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind25" desc="I母C相电压1数据无效">
							<DAI name="stVal" sAddr="1.1.88.0"/>
							<DAI name="q" sAddr="1.2.88.0"/>
							<DAI name="t" sAddr="1.3.88.0"/>
							<DAI name="dU" sAddr="I母C相电压1数据无效"/>
						</DOI>
						<DOI name="Ind26" desc="I母C相电压1光路故障">
							<DAI name="stVal" sAddr="1.1.89.0"/>
							<DAI name="q" sAddr="1.2.89.0"/>
							<DAI name="t" sAddr="1.3.89.0"/>
							<DAI name="dU" sAddr="I母C相电压1光路故障"/>
						</DOI>
						<DOI name="Ind27" desc="I母C相电压1电路故障">
							<DAI name="stVal" sAddr="1.1.90.0"/>
							<DAI name="q" sAddr="1.2.90.0"/>
							<DAI name="t" sAddr="1.3.90.0"/>
							<DAI name="dU" sAddr="I母C相电压1电路故障"/>
						</DOI>
						<DOI name="Ind28" desc="I母C相电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.91.0"/>
							<DAI name="q" sAddr="1.2.91.0"/>
							<DAI name="t" sAddr="1.3.91.0"/>
							<DAI name="dU" sAddr="I母C相电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind29" desc="II母电压1数据无效">
							<DAI name="stVal" sAddr="1.1.92.0"/>
							<DAI name="q" sAddr="1.2.92.0"/>
							<DAI name="t" sAddr="1.3.92.0"/>
							<DAI name="dU" sAddr="II母电压1数据无效"/>
						</DOI>
						<DOI name="Ind30" desc="II母电压1光路故障">
							<DAI name="stVal" sAddr="1.1.93.0"/>
							<DAI name="q" sAddr="1.2.93.0"/>
							<DAI name="t" sAddr="1.3.93.0"/>
							<DAI name="dU" sAddr="II母电压1光路故障"/>
						</DOI>
						<DOI name="Ind31" desc="II母电压1电路故障">
							<DAI name="stVal" sAddr="1.1.94.0"/>
							<DAI name="q" sAddr="1.2.94.0"/>
							<DAI name="t" sAddr="1.3.94.0"/>
							<DAI name="dU" sAddr="II母电压1电路故障"/>
						</DOI>
						<DOI name="Ind32" desc="II母电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.95.0"/>
							<DAI name="q" sAddr="1.2.95.0"/>
							<DAI name="t" sAddr="1.3.95.0"/>
							<DAI name="dU" sAddr="II母电压1AD采样故障"/>
						</DOI>
					</LN>
					<LN prefix="BinOut" lnClass="GGIO" lnType="2_GNR_GGIO_Ind32" inst="4" desc="开关遥信上送">
						<DOI name="Ind1" desc="II母A相电压1数据无效">
							<DAI name="stVal" sAddr="1.1.96.0"/>
							<DAI name="q" sAddr="1.2.96.0"/>
							<DAI name="t" sAddr="1.3.96.0"/>
							<DAI name="dU" sAddr="II母A相电压1数据无效"/>
						</DOI>
						<DOI name="Ind2" desc="II母A相电压1光路故障">
							<DAI name="stVal" sAddr="1.1.97.0"/>
							<DAI name="q" sAddr="1.2.97.0"/>
							<DAI name="t" sAddr="1.3.97.0"/>
							<DAI name="dU" sAddr="II母A相电压1光路故障"/>
						</DOI>
						<DOI name="Ind3" desc="II母A相电压1电路故障">
							<DAI name="stVal" sAddr="1.1.98.0"/>
							<DAI name="q" sAddr="1.2.98.0"/>
							<DAI name="t" sAddr="1.3.98.0"/>
							<DAI name="dU" sAddr="II母A相电压1电路故障"/>
						</DOI>
						<DOI name="Ind4" desc="II母A相电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.99.0"/>
							<DAI name="q" sAddr="1.2.99.0"/>
							<DAI name="t" sAddr="1.3.99.0"/>
							<DAI name="dU" sAddr="II母A相电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind5" desc="II母B相电压1数据无效">
							<DAI name="stVal" sAddr="1.1.100.0"/>
							<DAI name="q" sAddr="1.2.100.0"/>
							<DAI name="t" sAddr="1.3.100.0"/>
							<DAI name="dU" sAddr="II母B相电压1数据无效"/>
						</DOI>
						<DOI name="Ind6" desc="II母B相电压1光路故障">
							<DAI name="stVal" sAddr="1.1.101.0"/>
							<DAI name="q" sAddr="1.2.101.0"/>
							<DAI name="t" sAddr="1.3.101.0"/>
							<DAI name="dU" sAddr="II母B相电压1光路故障"/>
						</DOI>
						<DOI name="Ind7" desc="II母B相电压1电路故障">
							<DAI name="stVal" sAddr="1.1.102.0"/>
							<DAI name="q" sAddr="1.2.102.0"/>
							<DAI name="t" sAddr="1.3.102.0"/>
							<DAI name="dU" sAddr="II母B相电压1电路故障"/>
						</DOI>
						<DOI name="Ind8" desc="II母B相电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.103.0"/>
							<DAI name="q" sAddr="1.2.103.0"/>
							<DAI name="t" sAddr="1.3.103.0"/>
							<DAI name="dU" sAddr="II母B相电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind9" desc="II母C相电压1数据无效">
							<DAI name="stVal" sAddr="1.1.104.0"/>
							<DAI name="q" sAddr="1.2.104.0"/>
							<DAI name="t" sAddr="1.3.104.0"/>
							<DAI name="dU" sAddr="II母C相电压1数据无效"/>
						</DOI>
						<DOI name="Ind10" desc="II母C相电压1光路故障">
							<DAI name="stVal" sAddr="1.1.105.0"/>
							<DAI name="q" sAddr="1.2.105.0"/>
							<DAI name="t" sAddr="1.3.105.0"/>
							<DAI name="dU" sAddr="II母C相电压1光路故障"/>
						</DOI>
						<DOI name="Ind11" desc="II母C相电压1电路故障">
							<DAI name="stVal" sAddr="1.1.106.0"/>
							<DAI name="q" sAddr="1.2.106.0"/>
							<DAI name="t" sAddr="1.3.106.0"/>
							<DAI name="dU" sAddr="II母C相电压1电路故障"/>
						</DOI>
						<DOI name="Ind12" desc="II母C相电压1AD采样故障">
							<DAI name="stVal" sAddr="1.1.107.0"/>
							<DAI name="q" sAddr="1.2.107.0"/>
							<DAI name="t" sAddr="1.3.107.0"/>
							<DAI name="dU" sAddr="II母C相电压1AD采样故障"/>
						</DOI>
						<DOI name="Ind13" desc="遥信13">
							<DAI name="stVal" sAddr="1.1.108.0"/>
							<DAI name="q" sAddr="1.2.108.0"/>
							<DAI name="t" sAddr="1.3.108.0"/>
							<DAI name="dU" sAddr="遥信13"/>
						</DOI>
						<DOI name="Ind14" desc="遥信14">
							<DAI name="stVal" sAddr="1.1.109.0"/>
							<DAI name="q" sAddr="1.2.109.0"/>
							<DAI name="t" sAddr="1.3.109.0"/>
							<DAI name="dU" sAddr="遥信14"/>
						</DOI>
						<DOI name="Ind15" desc="遥信15">
							<DAI name="stVal" sAddr="1.1.110.0"/>
							<DAI name="q" sAddr="1.2.110.0"/>
							<DAI name="t" sAddr="1.3.110.0"/>
							<DAI name="dU" sAddr="遥信15"/>
						</DOI>
						<DOI name="Ind16" desc="遥信16">
							<DAI name="stVal" sAddr="1.1.111.0"/>
							<DAI name="q" sAddr="1.2.111.0"/>
							<DAI name="t" sAddr="1.3.111.0"/>
							<DAI name="dU" sAddr="遥信16"/>
						</DOI>
						<DOI name="Ind17" desc="A相保护电流2数据无效">
							<DAI name="stVal" sAddr="1.1.112.0"/>
							<DAI name="q" sAddr="1.2.112.0"/>
							<DAI name="t" sAddr="1.3.112.0"/>
							<DAI name="dU" sAddr="A相保护电流2数据无效"/>
						</DOI>
						<DOI name="Ind18" desc="A相保护电流2光路故障">
							<DAI name="stVal" sAddr="1.1.113.0"/>
							<DAI name="q" sAddr="1.2.113.0"/>
							<DAI name="t" sAddr="1.3.113.0"/>
							<DAI name="dU" sAddr="A相保护电流2光路故障"/>
						</DOI>
						<DOI name="Ind19" desc="A相保护电流2电路故障">
							<DAI name="stVal" sAddr="1.1.114.0"/>
							<DAI name="q" sAddr="1.2.114.0"/>
							<DAI name="t" sAddr="1.3.114.0"/>
							<DAI name="dU" sAddr="A相保护电流2电路故障"/>
						</DOI>
						<DOI name="Ind20" desc="A相保护电流2AD采样故障">
							<DAI name="stVal" sAddr="1.1.115.0"/>
							<DAI name="q" sAddr="1.2.115.0"/>
							<DAI name="t" sAddr="1.3.115.0"/>
							<DAI name="dU" sAddr="A相保护电流2AD采样故障"/>
						</DOI>
						<DOI name="Ind21" desc="B相保护电流2数据无效">
							<DAI name="stVal" sAddr="1.1.116.0"/>
							<DAI name="q" sAddr="1.2.116.0"/>
							<DAI name="t" sAddr="1.3.116.0"/>
							<DAI name="dU" sAddr="B相保护电流2数据无效"/>
						</DOI>
						<DOI name="Ind22" desc="B相保护电流2光路故障">
							<DAI name="stVal" sAddr="1.1.117.0"/>
							<DAI name="q" sAddr="1.2.117.0"/>
							<DAI name="t" sAddr="1.3.117.0"/>
							<DAI name="dU" sAddr="B相保护电流2光路故障"/>
						</DOI>
						<DOI name="Ind23" desc="B相保护电流2电路故障">
							<DAI name="stVal" sAddr="1.1.118.0"/>
							<DAI name="q" sAddr="1.2.118.0"/>
							<DAI name="t" sAddr="1.3.118.0"/>
							<DAI name="dU" sAddr="B相保护电流2电路故障"/>
						</DOI>
						<DOI name="Ind24" desc="B相保护电流2AD采样故障">
							<DAI name="stVal" sAddr="1.1.119.0"/>
							<DAI name="q" sAddr="1.2.119.0"/>
							<DAI name="t" sAddr="1.3.119.0"/>
							<DAI name="dU" sAddr="B相保护电流2AD采样故障"/>
						</DOI>
						<DOI name="Ind25" desc="C相保护电流2数据无效">
							<DAI name="stVal" sAddr="1.1.120.0"/>
							<DAI name="q" sAddr="1.2.120.0"/>
							<DAI name="t" sAddr="1.3.120.0"/>
							<DAI name="dU" sAddr="C相保护电流2数据无效"/>
						</DOI>
						<DOI name="Ind26" desc="C相保护电流2光路故障">
							<DAI name="stVal" sAddr="1.1.121.0"/>
							<DAI name="q" sAddr="1.2.121.0"/>
							<DAI name="t" sAddr="1.3.121.0"/>
							<DAI name="dU" sAddr="C相保护电流2光路故障"/>
						</DOI>
						<DOI name="Ind27" desc="C相保护电流2电路故障">
							<DAI name="stVal" sAddr="1.1.122.0"/>
							<DAI name="q" sAddr="1.2.122.0"/>
							<DAI name="t" sAddr="1.3.122.0"/>
							<DAI name="dU" sAddr="C相保护电流2电路故障"/>
						</DOI>
						<DOI name="Ind28" desc="C相保护电流2AD采样故障">
							<DAI name="stVal" sAddr="1.1.123.0"/>
							<DAI name="q" sAddr="1.2.123.0"/>
							<DAI name="t" sAddr="1.3.123.0"/>
							<DAI name="dU" sAddr="C相保护电流2AD采样故障"/>
						</DOI>
						<DOI name="Ind29" desc="中性点电流2数据无效">
							<DAI name="stVal" sAddr="1.1.124.0"/>
							<DAI name="q" sAddr="1.2.124.0"/>
							<DAI name="t" sAddr="1.3.124.0"/>
							<DAI name="dU" sAddr="中性点电流2数据无效"/>
						</DOI>
						<DOI name="Ind30" desc="中性点电流2光路故障">
							<DAI name="stVal" sAddr="1.1.125.0"/>
							<DAI name="q" sAddr="1.2.125.0"/>
							<DAI name="t" sAddr="1.3.125.0"/>
							<DAI name="dU" sAddr="中性点电流2光路故障"/>
						</DOI>
						<DOI name="Ind31" desc="中性点电流2电路故障">
							<DAI name="stVal" sAddr="1.1.126.0"/>
							<DAI name="q" sAddr="1.2.126.0"/>
							<DAI name="t" sAddr="1.3.126.0"/>
							<DAI name="dU" sAddr="中性点电流2电路故障"/>
						</DOI>
						<DOI name="Ind32" desc="中性点电流2AD采样故障">
							<DAI name="stVal" sAddr="1.1.127.0"/>
							<DAI name="q" sAddr="1.2.127.0"/>
							<DAI name="t" sAddr="1.3.127.0"/>
							<DAI name="dU" sAddr="中性点电流2AD采样故障"/>
						</DOI>
					</LN>
					<LN prefix="BinOut" lnClass="GGIO" lnType="2_GNR_GGIO_Ind32" inst="5" desc="开关遥信上送">
						<DOI name="Ind1" desc="A相测量电流2数据无效">
							<DAI name="stVal" sAddr="1.1.128.0"/>
							<DAI name="q" sAddr="1.2.128.0"/>
							<DAI name="t" sAddr="1.3.128.0"/>
							<DAI name="dU" sAddr="A相测量电流2数据无效"/>
						</DOI>
						<DOI name="Ind2" desc="A相测量电流2光路故障">
							<DAI name="stVal" sAddr="1.1.129.0"/>
							<DAI name="q" sAddr="1.2.129.0"/>
							<DAI name="t" sAddr="1.3.129.0"/>
							<DAI name="dU" sAddr="A相测量电流2光路故障"/>
						</DOI>
						<DOI name="Ind3" desc="A相测量电流2电路故障">
							<DAI name="stVal" sAddr="1.1.130.0"/>
							<DAI name="q" sAddr="1.2.130.0"/>
							<DAI name="t" sAddr="1.3.130.0"/>
							<DAI name="dU" sAddr="A相测量电流2电路故障"/>
						</DOI>
						<DOI name="Ind4" desc="A相测量电流2AD采样故障">
							<DAI name="stVal" sAddr="1.1.131.0"/>
							<DAI name="q" sAddr="1.2.131.0"/>
							<DAI name="t" sAddr="1.3.131.0"/>
							<DAI name="dU" sAddr="A相测量电流2AD采样故障"/>
						</DOI>
						<DOI name="Ind5" desc="B相测量电流2数据无效">
							<DAI name="stVal" sAddr="1.1.132.0"/>
							<DAI name="q" sAddr="1.2.132.0"/>
							<DAI name="t" sAddr="1.3.132.0"/>
							<DAI name="dU" sAddr="B相测量电流2数据无效"/>
						</DOI>
						<DOI name="Ind6" desc="B相测量电流2光路故障">
							<DAI name="stVal" sAddr="1.1.133.0"/>
							<DAI name="q" sAddr="1.2.133.0"/>
							<DAI name="t" sAddr="1.3.133.0"/>
							<DAI name="dU" sAddr="B相测量电流2光路故障"/>
						</DOI>
						<DOI name="Ind7" desc="B相测量电流2电路故障">
							<DAI name="stVal" sAddr="1.1.134.0"/>
							<DAI name="q" sAddr="1.2.134.0"/>
							<DAI name="t" sAddr="1.3.134.0"/>
							<DAI name="dU" sAddr="B相测量电流2电路故障"/>
						</DOI>
						<DOI name="Ind8" desc="B相测量电流2AD采样故障">
							<DAI name="stVal" sAddr="1.1.135.0"/>
							<DAI name="q" sAddr="1.2.135.0"/>
							<DAI name="t" sAddr="1.3.135.0"/>
							<DAI name="dU" sAddr="B相测量电流2AD采样故障"/>
						</DOI>
						<DOI name="Ind9" desc="C相测量电流2数据无效">
							<DAI name="stVal" sAddr="1.1.136.0"/>
							<DAI name="q" sAddr="1.2.136.0"/>
							<DAI name="t" sAddr="1.3.136.0"/>
							<DAI name="dU" sAddr="C相测量电流2数据无效"/>
						</DOI>
						<DOI name="Ind10" desc="C相测量电流2光路故障">
							<DAI name="stVal" sAddr="1.1.137.0"/>
							<DAI name="q" sAddr="1.2.137.0"/>
							<DAI name="t" sAddr="1.3.137.0"/>
							<DAI name="dU" sAddr="C相测量电流2光路故障"/>
						</DOI>
						<DOI name="Ind11" desc="C相测量电流2电路故障">
							<DAI name="stVal" sAddr="1.1.138.0"/>
							<DAI name="q" sAddr="1.2.138.0"/>
							<DAI name="t" sAddr="1.3.138.0"/>
							<DAI name="dU" sAddr="C相测量电流2电路故障"/>
						</DOI>
						<DOI name="Ind12" desc="C相测量电流2AD采样故障">
							<DAI name="stVal" sAddr="1.1.139.0"/>
							<DAI name="q" sAddr="1.2.139.0"/>
							<DAI name="t" sAddr="1.3.139.0"/>
							<DAI name="dU" sAddr="C相测量电流2AD采样故障"/>
						</DOI>
						<DOI name="Ind13" desc="A相电压2数据无效">
							<DAI name="stVal" sAddr="1.1.140.0"/>
							<DAI name="q" sAddr="1.2.140.0"/>
							<DAI name="t" sAddr="1.3.140.0"/>
							<DAI name="dU" sAddr="A相电压2数据无效"/>
						</DOI>
						<DOI name="Ind14" desc="A相电压2光路故障">
							<DAI name="stVal" sAddr="1.1.141.0"/>
							<DAI name="q" sAddr="1.2.141.0"/>
							<DAI name="t" sAddr="1.3.141.0"/>
							<DAI name="dU" sAddr="A相电压2光路故障"/>
						</DOI>
						<DOI name="Ind15" desc="A相电压2电路故障">
							<DAI name="stVal" sAddr="1.1.142.0"/>
							<DAI name="q" sAddr="1.2.142.0"/>
							<DAI name="t" sAddr="1.3.142.0"/>
							<DAI name="dU" sAddr="A相电压2电路故障"/>
						</DOI>
						<DOI name="Ind16" desc="A相电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.143.0"/>
							<DAI name="q" sAddr="1.2.143.0"/>
							<DAI name="t" sAddr="1.3.143.0"/>
							<DAI name="dU" sAddr="A相电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind17" desc="B相电压2数据无效">
							<DAI name="stVal" sAddr="1.1.144.0"/>
							<DAI name="q" sAddr="1.2.144.0"/>
							<DAI name="t" sAddr="1.3.144.0"/>
							<DAI name="dU" sAddr="B相电压2数据无效"/>
						</DOI>
						<DOI name="Ind18" desc="B相电压2光路故障">
							<DAI name="stVal" sAddr="1.1.145.0"/>
							<DAI name="q" sAddr="1.2.145.0"/>
							<DAI name="t" sAddr="1.3.145.0"/>
							<DAI name="dU" sAddr="B相电压2光路故障"/>
						</DOI>
						<DOI name="Ind19" desc="B相电压2电路故障">
							<DAI name="stVal" sAddr="1.1.146.0"/>
							<DAI name="q" sAddr="1.2.146.0"/>
							<DAI name="t" sAddr="1.3.146.0"/>
							<DAI name="dU" sAddr="B相电压2电路故障"/>
						</DOI>
						<DOI name="Ind20" desc="B相电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.147.0"/>
							<DAI name="q" sAddr="1.2.147.0"/>
							<DAI name="t" sAddr="1.3.147.0"/>
							<DAI name="dU" sAddr="B相电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind21" desc="C相电压2数据无效">
							<DAI name="stVal" sAddr="1.1.148.0"/>
							<DAI name="q" sAddr="1.2.148.0"/>
							<DAI name="t" sAddr="1.3.148.0"/>
							<DAI name="dU" sAddr="C相电压2数据无效"/>
						</DOI>
						<DOI name="Ind22" desc="C相电压2光路故障">
							<DAI name="stVal" sAddr="1.1.149.0"/>
							<DAI name="q" sAddr="1.2.149.0"/>
							<DAI name="t" sAddr="1.3.149.0"/>
							<DAI name="dU" sAddr="C相电压2光路故障"/>
						</DOI>
						<DOI name="Ind23" desc="C相电压2电路故障">
							<DAI name="stVal" sAddr="1.1.150.0"/>
							<DAI name="q" sAddr="1.2.150.0"/>
							<DAI name="t" sAddr="1.3.150.0"/>
							<DAI name="dU" sAddr="C相电压2电路故障"/>
						</DOI>
						<DOI name="Ind24" desc="C相电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.151.0"/>
							<DAI name="q" sAddr="1.2.151.0"/>
							<DAI name="t" sAddr="1.3.151.0"/>
							<DAI name="dU" sAddr="C相电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind25" desc="零序电压2数据无效">
							<DAI name="stVal" sAddr="1.1.152.0"/>
							<DAI name="q" sAddr="1.2.152.0"/>
							<DAI name="t" sAddr="1.3.152.0"/>
							<DAI name="dU" sAddr="零序电压2数据无效"/>
						</DOI>
						<DOI name="Ind26" desc="零序电压2光路故障">
							<DAI name="stVal" sAddr="1.1.153.0"/>
							<DAI name="q" sAddr="1.2.153.0"/>
							<DAI name="t" sAddr="1.3.153.0"/>
							<DAI name="dU" sAddr="零序电压2光路故障"/>
						</DOI>
						<DOI name="Ind27" desc="零序电压2电路故障">
							<DAI name="stVal" sAddr="1.1.154.0"/>
							<DAI name="q" sAddr="1.2.154.0"/>
							<DAI name="t" sAddr="1.3.154.0"/>
							<DAI name="dU" sAddr="零序电压2电路故障"/>
						</DOI>
						<DOI name="Ind28" desc="零序电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.155.0"/>
							<DAI name="q" sAddr="1.2.155.0"/>
							<DAI name="t" sAddr="1.3.155.0"/>
							<DAI name="dU" sAddr="零序电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind29" desc="I母电压2数据无效">
							<DAI name="stVal" sAddr="1.1.156.0"/>
							<DAI name="q" sAddr="1.2.156.0"/>
							<DAI name="t" sAddr="1.3.156.0"/>
							<DAI name="dU" sAddr="I母电压2数据无效"/>
						</DOI>
						<DOI name="Ind30" desc="I母电压2光路故障">
							<DAI name="stVal" sAddr="1.1.157.0"/>
							<DAI name="q" sAddr="1.2.157.0"/>
							<DAI name="t" sAddr="1.3.157.0"/>
							<DAI name="dU" sAddr="I母电压2光路故障"/>
						</DOI>
						<DOI name="Ind31" desc="I母电压2电路故障">
							<DAI name="stVal" sAddr="1.1.158.0"/>
							<DAI name="q" sAddr="1.2.158.0"/>
							<DAI name="t" sAddr="1.3.158.0"/>
							<DAI name="dU" sAddr="I母电压2电路故障"/>
						</DOI>
						<DOI name="Ind32" desc="I母电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.159.0"/>
							<DAI name="q" sAddr="1.2.159.0"/>
							<DAI name="t" sAddr="1.3.159.0"/>
							<DAI name="dU" sAddr="I母电压2AD采样故障"/>
						</DOI>
					</LN>
					<LN prefix="BinOut" lnClass="GGIO" lnType="2_GNR_GGIO_Ind32" inst="6" desc="开关遥信上送">
						<DOI name="Ind1" desc="I母A相电压2数据无效">
							<DAI name="stVal" sAddr="1.1.160.0"/>
							<DAI name="q" sAddr="1.2.160.0"/>
							<DAI name="t" sAddr="1.3.160.0"/>
							<DAI name="dU" sAddr="I母A相电压2数据无效"/>
						</DOI>
						<DOI name="Ind2" desc="I母A相电压2光路故障">
							<DAI name="stVal" sAddr="1.1.161.0"/>
							<DAI name="q" sAddr="1.2.161.0"/>
							<DAI name="t" sAddr="1.3.161.0"/>
							<DAI name="dU" sAddr="I母A相电压2光路故障"/>
						</DOI>
						<DOI name="Ind3" desc="I母A相电压2电路故障">
							<DAI name="stVal" sAddr="1.1.162.0"/>
							<DAI name="q" sAddr="1.2.162.0"/>
							<DAI name="t" sAddr="1.3.162.0"/>
							<DAI name="dU" sAddr="I母A相电压2电路故障"/>
						</DOI>
						<DOI name="Ind4" desc="I母A相电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.163.0"/>
							<DAI name="q" sAddr="1.2.163.0"/>
							<DAI name="t" sAddr="1.3.163.0"/>
							<DAI name="dU" sAddr="I母A相电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind5" desc="I母B相电压2数据无效">
							<DAI name="stVal" sAddr="1.1.164.0"/>
							<DAI name="q" sAddr="1.2.164.0"/>
							<DAI name="t" sAddr="1.3.164.0"/>
							<DAI name="dU" sAddr="I母B相电压2数据无效"/>
						</DOI>
						<DOI name="Ind6" desc="I母B相电压2光路故障">
							<DAI name="stVal" sAddr="1.1.165.0"/>
							<DAI name="q" sAddr="1.2.165.0"/>
							<DAI name="t" sAddr="1.3.165.0"/>
							<DAI name="dU" sAddr="I母B相电压2光路故障"/>
						</DOI>
						<DOI name="Ind7" desc="I母B相电压2电路故障">
							<DAI name="stVal" sAddr="1.1.166.0"/>
							<DAI name="q" sAddr="1.2.166.0"/>
							<DAI name="t" sAddr="1.3.166.0"/>
							<DAI name="dU" sAddr="I母B相电压2电路故障"/>
						</DOI>
						<DOI name="Ind8" desc="I母B相电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.167.0"/>
							<DAI name="q" sAddr="1.2.167.0"/>
							<DAI name="t" sAddr="1.3.167.0"/>
							<DAI name="dU" sAddr="I母B相电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind9" desc="I母C相电压2数据无效">
							<DAI name="stVal" sAddr="1.1.168.0"/>
							<DAI name="q" sAddr="1.2.168.0"/>
							<DAI name="t" sAddr="1.3.168.0"/>
							<DAI name="dU" sAddr="I母C相电压2数据无效"/>
						</DOI>
						<DOI name="Ind10" desc="I母C相电压2光路故障">
							<DAI name="stVal" sAddr="1.1.169.0"/>
							<DAI name="q" sAddr="1.2.169.0"/>
							<DAI name="t" sAddr="1.3.169.0"/>
							<DAI name="dU" sAddr="I母C相电压2光路故障"/>
						</DOI>
						<DOI name="Ind11" desc="I母C相电压2电路故障">
							<DAI name="stVal" sAddr="1.1.170.0"/>
							<DAI name="q" sAddr="1.2.170.0"/>
							<DAI name="t" sAddr="1.3.170.0"/>
							<DAI name="dU" sAddr="I母C相电压2电路故障"/>
						</DOI>
						<DOI name="Ind12" desc="I母C相电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.171.0"/>
							<DAI name="q" sAddr="1.2.171.0"/>
							<DAI name="t" sAddr="1.3.171.0"/>
							<DAI name="dU" sAddr="I母C相电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind13" desc="II母电压2数据无效">
							<DAI name="stVal" sAddr="1.1.172.0"/>
							<DAI name="q" sAddr="1.2.172.0"/>
							<DAI name="t" sAddr="1.3.172.0"/>
							<DAI name="dU" sAddr="II母电压2数据无效"/>
						</DOI>
						<DOI name="Ind14" desc="II母电压2光路故障">
							<DAI name="stVal" sAddr="1.1.173.0"/>
							<DAI name="q" sAddr="1.2.173.0"/>
							<DAI name="t" sAddr="1.3.173.0"/>
							<DAI name="dU" sAddr="II母电压2光路故障"/>
						</DOI>
						<DOI name="Ind15" desc="II母电压2电路故障">
							<DAI name="stVal" sAddr="1.1.174.0"/>
							<DAI name="q" sAddr="1.2.174.0"/>
							<DAI name="t" sAddr="1.3.174.0"/>
							<DAI name="dU" sAddr="II母电压2电路故障"/>
						</DOI>
						<DOI name="Ind16" desc="II母电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.175.0"/>
							<DAI name="q" sAddr="1.2.175.0"/>
							<DAI name="t" sAddr="1.3.175.0"/>
							<DAI name="dU" sAddr="II母电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind17" desc="II母A相电压2数据无效">
							<DAI name="stVal" sAddr="1.1.176.0"/>
							<DAI name="q" sAddr="1.2.176.0"/>
							<DAI name="t" sAddr="1.3.176.0"/>
							<DAI name="dU" sAddr="II母A相电压2数据无效"/>
						</DOI>
						<DOI name="Ind18" desc="II母A相电压2光路故障">
							<DAI name="stVal" sAddr="1.1.177.0"/>
							<DAI name="q" sAddr="1.2.177.0"/>
							<DAI name="t" sAddr="1.3.177.0"/>
							<DAI name="dU" sAddr="II母A相电压2光路故障"/>
						</DOI>
						<DOI name="Ind19" desc="II母A相电压2电路故障">
							<DAI name="stVal" sAddr="1.1.178.0"/>
							<DAI name="q" sAddr="1.2.178.0"/>
							<DAI name="t" sAddr="1.3.178.0"/>
							<DAI name="dU" sAddr="II母A相电压2电路故障"/>
						</DOI>
						<DOI name="Ind20" desc="II母A相电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.179.0"/>
							<DAI name="q" sAddr="1.2.179.0"/>
							<DAI name="t" sAddr="1.3.179.0"/>
							<DAI name="dU" sAddr="II母A相电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind21" desc="II母B相电压2数据无效">
							<DAI name="stVal" sAddr="1.1.180.0"/>
							<DAI name="q" sAddr="1.2.180.0"/>
							<DAI name="t" sAddr="1.3.180.0"/>
							<DAI name="dU" sAddr="II母B相电压2数据无效"/>
						</DOI>
						<DOI name="Ind22" desc="II母B相电压2光路故障">
							<DAI name="stVal" sAddr="1.1.181.0"/>
							<DAI name="q" sAddr="1.2.181.0"/>
							<DAI name="t" sAddr="1.3.181.0"/>
							<DAI name="dU" sAddr="II母B相电压2光路故障"/>
						</DOI>
						<DOI name="Ind23" desc="II母B相电压2电路故障">
							<DAI name="stVal" sAddr="1.1.182.0"/>
							<DAI name="q" sAddr="1.2.182.0"/>
							<DAI name="t" sAddr="1.3.182.0"/>
							<DAI name="dU" sAddr="II母B相电压2电路故障"/>
						</DOI>
						<DOI name="Ind24" desc="II母B相电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.183.0"/>
							<DAI name="q" sAddr="1.2.183.0"/>
							<DAI name="t" sAddr="1.3.183.0"/>
							<DAI name="dU" sAddr="II母B相电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind25" desc="II母C相电压2数据无效">
							<DAI name="stVal" sAddr="1.1.184.0"/>
							<DAI name="q" sAddr="1.2.184.0"/>
							<DAI name="t" sAddr="1.3.184.0"/>
							<DAI name="dU" sAddr="II母C相电压2数据无效"/>
						</DOI>
						<DOI name="Ind26" desc="II母C相电压2光路故障">
							<DAI name="stVal" sAddr="1.1.185.0"/>
							<DAI name="q" sAddr="1.2.185.0"/>
							<DAI name="t" sAddr="1.3.185.0"/>
							<DAI name="dU" sAddr="II母C相电压2光路故障"/>
						</DOI>
						<DOI name="Ind27" desc="II母C相电压2电路故障">
							<DAI name="stVal" sAddr="1.1.186.0"/>
							<DAI name="q" sAddr="1.2.186.0"/>
							<DAI name="t" sAddr="1.3.186.0"/>
							<DAI name="dU" sAddr="II母C相电压2电路故障"/>
						</DOI>
						<DOI name="Ind28" desc="II母C相电压2AD采样故障">
							<DAI name="stVal" sAddr="1.1.187.0"/>
							<DAI name="q" sAddr="1.2.187.0"/>
							<DAI name="t" sAddr="1.3.187.0"/>
							<DAI name="dU" sAddr="II母C相电压2AD采样故障"/>
						</DOI>
						<DOI name="Ind29" desc="遥信29">
							<DAI name="stVal" sAddr="1.1.188.0"/>
							<DAI name="q" sAddr="1.2.188.0"/>
							<DAI name="t" sAddr="1.3.188.0"/>
							<DAI name="dU" sAddr="遥信29"/>
						</DOI>
						<DOI name="Ind30" desc="遥信30">
							<DAI name="stVal" sAddr="1.1.189.0"/>
							<DAI name="q" sAddr="1.2.189.0"/>
							<DAI name="t" sAddr="1.3.189.0"/>
							<DAI name="dU" sAddr="遥信30"/>
						</DOI>
						<DOI name="Ind31" desc="遥信31">
							<DAI name="stVal" sAddr="1.1.190.0"/>
							<DAI name="q" sAddr="1.2.190.0"/>
							<DAI name="t" sAddr="1.3.190.0"/>
							<DAI name="dU" sAddr="遥信31"/>
						</DOI>
						<DOI name="Ind32" desc="遥信32">
							<DAI name="stVal" sAddr="1.1.191.0"/>
							<DAI name="q" sAddr="1.2.191.0"/>
							<DAI name="t" sAddr="1.3.191.0"/>
							<DAI name="dU" sAddr="遥信32"/>
						</DOI>
					</LN>
					<LN prefix="BinOut" lnClass="GGIO" lnType="2_GNR_GGIO_Ind32" inst="7" desc="开关遥信上送">
						<DOI name="Ind1" desc="第1个串口链路异常">
							<DAI name="stVal" sAddr="1.1.192.0"/>
							<DAI name="q" sAddr="1.2.192.0"/>
							<DAI name="t" sAddr="1.3.192.0"/>
							<DAI name="dU" sAddr="第1个串口链路异常"/>
						</DOI>
						<DOI name="Ind2" desc="第2个串口链路异常">
							<DAI name="stVal" sAddr="1.1.193.0"/>
							<DAI name="q" sAddr="1.2.193.0"/>
							<DAI name="t" sAddr="1.3.193.0"/>
							<DAI name="dU" sAddr="第2个串口链路异常"/>
						</DOI>
						<DOI name="Ind3" desc="第3个串口链路异常">
							<DAI name="stVal" sAddr="1.1.194.0"/>
							<DAI name="q" sAddr="1.2.194.0"/>
							<DAI name="t" sAddr="1.3.194.0"/>
							<DAI name="dU" sAddr="第3个串口链路异常"/>
						</DOI>
						<DOI name="Ind4" desc="第4个串口链路异常">
							<DAI name="stVal" sAddr="1.1.195.0"/>
							<DAI name="q" sAddr="1.2.195.0"/>
							<DAI name="t" sAddr="1.3.195.0"/>
							<DAI name="dU" sAddr="第4个串口链路异常"/>
						</DOI>
						<DOI name="Ind5" desc="第5个串口链路异常">
							<DAI name="stVal" sAddr="1.1.196.0"/>
							<DAI name="q" sAddr="1.2.196.0"/>
							<DAI name="t" sAddr="1.3.196.0"/>
							<DAI name="dU" sAddr="第5个串口链路异常"/>
						</DOI>
						<DOI name="Ind6" desc="第6个串口链路异常">
							<DAI name="stVal" sAddr="1.1.197.0"/>
							<DAI name="q" sAddr="1.2.197.0"/>
							<DAI name="t" sAddr="1.3.197.0"/>
							<DAI name="dU" sAddr="第6个串口链路异常"/>
						</DOI>
						<DOI name="Ind7" desc="第7个串口链路异常">
							<DAI name="stVal" sAddr="1.1.198.0"/>
							<DAI name="q" sAddr="1.2.198.0"/>
							<DAI name="t" sAddr="1.3.198.0"/>
							<DAI name="dU" sAddr="第7个串口链路异常"/>
						</DOI>
						<DOI name="Ind8" desc="第8个串口链路异常">
							<DAI name="stVal" sAddr="1.1.199.0"/>
							<DAI name="q" sAddr="1.2.199.0"/>
							<DAI name="t" sAddr="1.3.199.0"/>
							<DAI name="dU" sAddr="第8个串口链路异常"/>
						</DOI>
						<DOI name="Ind9" desc="第9个串口链路异常">
							<DAI name="stVal" sAddr="1.1.200.0"/>
							<DAI name="q" sAddr="1.2.200.0"/>
							<DAI name="t" sAddr="1.3.200.0"/>
							<DAI name="dU" sAddr="第9个串口链路异常"/>
						</DOI>
						<DOI name="Ind10" desc="第10个串口链路异常">
							<DAI name="stVal" sAddr="1.1.201.0"/>
							<DAI name="q" sAddr="1.2.201.0"/>
							<DAI name="t" sAddr="1.3.201.0"/>
							<DAI name="dU" sAddr="第10个串口链路异常"/>
						</DOI>
						<DOI name="Ind11" desc="第11个串口链路异常">
							<DAI name="stVal" sAddr="1.1.202.0"/>
							<DAI name="q" sAddr="1.2.202.0"/>
							<DAI name="t" sAddr="1.3.202.0"/>
							<DAI name="dU" sAddr="第11个串口链路异常"/>
						</DOI>
						<DOI name="Ind12" desc="第12个串口链路异常">
							<DAI name="stVal" sAddr="1.1.203.0"/>
							<DAI name="q" sAddr="1.2.203.0"/>
							<DAI name="t" sAddr="1.3.203.0"/>
							<DAI name="dU" sAddr="第12个串口链路异常"/>
						</DOI>
						<DOI name="Ind13" desc="第13个串口链路异常">
							<DAI name="stVal" sAddr="1.1.204.0"/>
							<DAI name="q" sAddr="1.2.204.0"/>
							<DAI name="t" sAddr="1.3.204.0"/>
							<DAI name="dU" sAddr="第13个串口链路异常"/>
						</DOI>
						<DOI name="Ind14" desc="第14个串口链路异常">
							<DAI name="stVal" sAddr="1.1.205.0"/>
							<DAI name="q" sAddr="1.2.205.0"/>
							<DAI name="t" sAddr="1.3.205.0"/>
							<DAI name="dU" sAddr="第14个串口链路异常"/>
						</DOI>
						<DOI name="Ind15" desc="遥信15">
							<DAI name="stVal" sAddr="1.1.206.0"/>
							<DAI name="q" sAddr="1.2.206.0"/>
							<DAI name="t" sAddr="1.3.206.0"/>
							<DAI name="dU" sAddr="遥信15"/>
						</DOI>
						<DOI name="Ind16" desc="遥信16">
							<DAI name="stVal" sAddr="1.1.207.0"/>
							<DAI name="q" sAddr="1.2.207.0"/>
							<DAI name="t" sAddr="1.3.207.0"/>
							<DAI name="dU" sAddr="遥信16"/>
						</DOI>
						<DOI name="Ind17" desc="第1个串口数据无效">
							<DAI name="stVal" sAddr="1.1.208.0"/>
							<DAI name="q" sAddr="1.2.208.0"/>
							<DAI name="t" sAddr="1.3.208.0"/>
							<DAI name="dU" sAddr="第1个串口数据无效"/>
						</DOI>
						<DOI name="Ind18" desc="第2个串口数据无效">
							<DAI name="stVal" sAddr="1.1.209.0"/>
							<DAI name="q" sAddr="1.2.209.0"/>
							<DAI name="t" sAddr="1.3.209.0"/>
							<DAI name="dU" sAddr="第2个串口数据无效"/>
						</DOI>
						<DOI name="Ind19" desc="第3个串口数据无效">
							<DAI name="stVal" sAddr="1.1.210.0"/>
							<DAI name="q" sAddr="1.2.210.0"/>
							<DAI name="t" sAddr="1.3.210.0"/>
							<DAI name="dU" sAddr="第3个串口数据无效"/>
						</DOI>
						<DOI name="Ind20" desc="第4个串口数据无效">
							<DAI name="stVal" sAddr="1.1.211.0"/>
							<DAI name="q" sAddr="1.2.211.0"/>
							<DAI name="t" sAddr="1.3.211.0"/>
							<DAI name="dU" sAddr="第4个串口数据无效"/>
						</DOI>
						<DOI name="Ind21" desc="第5个串口数据无效">
							<DAI name="stVal" sAddr="1.1.212.0"/>
							<DAI name="q" sAddr="1.2.212.0"/>
							<DAI name="t" sAddr="1.3.212.0"/>
							<DAI name="dU" sAddr="第5个串口数据无效"/>
						</DOI>
						<DOI name="Ind22" desc="第6个串口数据无效">
							<DAI name="stVal" sAddr="1.1.213.0"/>
							<DAI name="q" sAddr="1.2.213.0"/>
							<DAI name="t" sAddr="1.3.213.0"/>
							<DAI name="dU" sAddr="第6个串口数据无效"/>
						</DOI>
						<DOI name="Ind23" desc="第7个串口数据无效">
							<DAI name="stVal" sAddr="1.1.214.0"/>
							<DAI name="q" sAddr="1.2.214.0"/>
							<DAI name="t" sAddr="1.3.214.0"/>
							<DAI name="dU" sAddr="第7个串口数据无效"/>
						</DOI>
						<DOI name="Ind24" desc="第8个串口数据无效">
							<DAI name="stVal" sAddr="1.1.215.0"/>
							<DAI name="q" sAddr="1.2.215.0"/>
							<DAI name="t" sAddr="1.3.215.0"/>
							<DAI name="dU" sAddr="第8个串口数据无效"/>
						</DOI>
						<DOI name="Ind25" desc="第9个串口数据无效">
							<DAI name="stVal" sAddr="1.1.216.0"/>
							<DAI name="q" sAddr="1.2.216.0"/>
							<DAI name="t" sAddr="1.3.216.0"/>
							<DAI name="dU" sAddr="第9个串口数据无效"/>
						</DOI>
						<DOI name="Ind26" desc="第10个串口数据无效">
							<DAI name="stVal" sAddr="1.1.217.0"/>
							<DAI name="q" sAddr="1.2.217.0"/>
							<DAI name="t" sAddr="1.3.217.0"/>
							<DAI name="dU" sAddr="第10个串口数据无效"/>
						</DOI>
						<DOI name="Ind27" desc="第11个串口数据无效">
							<DAI name="stVal" sAddr="1.1.218.0"/>
							<DAI name="q" sAddr="1.2.218.0"/>
							<DAI name="t" sAddr="1.3.218.0"/>
							<DAI name="dU" sAddr="第11个串口数据无效"/>
						</DOI>
						<DOI name="Ind28" desc="第12个串口数据无效">
							<DAI name="stVal" sAddr="1.1.219.0"/>
							<DAI name="q" sAddr="1.2.219.0"/>
							<DAI name="t" sAddr="1.3.219.0"/>
							<DAI name="dU" sAddr="第12个串口数据无效"/>
						</DOI>
						<DOI name="Ind29" desc="第13个串口数据无效">
							<DAI name="stVal" sAddr="1.1.220.0"/>
							<DAI name="q" sAddr="1.2.220.0"/>
							<DAI name="t" sAddr="1.3.220.0"/>
							<DAI name="dU" sAddr="第13个串口数据无效"/>
						</DOI>
						<DOI name="Ind30" desc="第14个串口数据无效">
							<DAI name="stVal" sAddr="1.1.221.0"/>
							<DAI name="q" sAddr="1.2.221.0"/>
							<DAI name="t" sAddr="1.3.221.0"/>
							<DAI name="dU" sAddr="第14个串口数据无效"/>
						</DOI>
						<DOI name="Ind31" desc="遥信31">
							<DAI name="stVal" sAddr="1.1.222.0"/>
							<DAI name="q" sAddr="1.2.222.0"/>
							<DAI name="t" sAddr="1.3.222.0"/>
							<DAI name="dU" sAddr="遥信31"/>
						</DOI>
						<DOI name="Ind32" desc="遥信32">
							<DAI name="stVal" sAddr="1.1.223.0"/>
							<DAI name="q" sAddr="1.2.223.0"/>
							<DAI name="t" sAddr="1.3.223.0"/>
							<DAI name="dU" sAddr="遥信32"/>
						</DOI>
					</LN>
				</LDevice>
			</Server>
		</AccessPoint>
	</IED>
	<IED name="ZD" type="NSR351D" desc="NSR351DB_ICD" manufacturer="NARITECH" configVersion="V1.0">
		<Private type="IED virtual terminal conection CRC">14D83946</Private>
		<Services>
			<ConfDataSet max="256" maxAttributes="256"/>
			<GSESettings cbName="Fix" datSet="Conf" appID="Conf" dataLabel="Fix"/>
			<GOOSE max="10"/>
		</Services>
		<AccessPoint name="G1" router="false" clock="false">
			<Server timeout="30">
				<Authentication none="false" password="false" weak="false" strong="false" certificate="false"/>
				<LDevice inst="RPIT">
					<LN0 lnClass="LLN0" lnType="1_GNR_LLN0_0" inst="">
						<DataSet name="dsGOOSE0" desc="位置及保护信号">
							<FCDA ldInst="RPIT" prefix="Q0" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="Q0" lnClass="XCBR" lnInst="1" doName="Pos" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="Q0A" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="Q0A" lnClass="XCBR" lnInst="1" doName="Pos" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="Q0B" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="Q0B" lnClass="XCBR" lnInst="1" doName="Pos" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="Q0C" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="Q0C" lnClass="XCBR" lnInst="1" doName="Pos" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="QG1" lnClass="XSWI" lnInst="1" doName="Pos" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="QG1" lnClass="XSWI" lnInst="1" doName="Pos" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="QG2" lnClass="XSWI" lnInst="1" doName="Pos" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="QG2" lnClass="XSWI" lnInst="1" doName="Pos" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="QG3" lnClass="XSWI" lnInst="1" doName="Pos" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="QG3" lnClass="XSWI" lnInst="1" doName="Pos" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="QG4" lnClass="XSWI" lnInst="1" doName="Pos" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="QG4" lnClass="XSWI" lnInst="1" doName="Pos" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="QGD1" lnClass="XSWI" lnInst="1" doName="Pos" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="QGD1" lnClass="XSWI" lnInst="1" doName="Pos" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="QGD2" lnClass="XSWI" lnInst="1" doName="Pos" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="QGD2" lnClass="XSWI" lnInst="1" doName="Pos" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="QGD3" lnClass="XSWI" lnInst="1" doName="Pos" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="QGD3" lnClass="XSWI" lnInst="1" doName="Pos" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BY1" lnClass="XSWI" lnInst="1" doName="Pos" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BY1" lnClass="XSWI" lnInst="1" doName="Pos" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BY2" lnClass="XSWI" lnInst="2" doName="Pos" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BY2" lnClass="XSWI" lnInst="2" doName="Pos" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BY3" lnClass="XSWI" lnInst="3" doName="Pos" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BY3" lnClass="XSWI" lnInst="3" doName="Pos" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BY4" lnClass="XSWI" lnInst="4" doName="Pos" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BY4" lnClass="XSWI" lnInst="4" doName="Pos" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind1" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind2" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind4" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind5" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind6" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind6" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind7" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind7" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind8" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind9" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind10" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind11" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind12" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind12" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="3" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="3" doName="Ind8" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="3" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="3" doName="Ind9" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="3" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="3" doName="Ind10" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="3" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="3" doName="Ind11" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="ProtIn" lnClass="GGIO" lnInst="3" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="ProtIn" lnClass="GGIO" lnInst="3" doName="Ind1" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="ProtIn" lnClass="GGIO" lnInst="3" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="ProtIn" lnClass="GGIO" lnInst="3" doName="Ind2" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="ProtIn" lnClass="GGIO" lnInst="3" doName="Ind3" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="ProtIn" lnClass="GGIO" lnInst="3" doName="Ind3" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="ProtIn" lnClass="GGIO" lnInst="3" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="ProtIn" lnClass="GGIO" lnInst="3" doName="Ind4" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="ProtIn" lnClass="GGIO" lnInst="3" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="ProtIn" lnClass="GGIO" lnInst="3" doName="Ind5" daName="t" fc="ST"/>
						</DataSet>
						<DataSet name="dsGOOSE1" desc="测控信号">
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind13" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind13" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind14" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind14" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind15" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind15" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind16" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind16" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind17" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind17" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind18" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind18" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind19" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind19" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind20" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind20" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind21" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind21" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind22" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind22" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind23" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind23" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind24" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind24" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind25" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind25" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind26" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind26" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind27" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind27" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind28" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind28" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind29" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind29" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind30" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind30" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind31" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind31" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind32" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="1" doName="Ind32" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind1" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind2" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind3" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind3" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind4" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind5" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind6" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind6" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind7" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind7" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind8" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind9" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind10" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind11" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind12" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind12" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind13" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind13" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind14" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind14" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind15" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind15" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind16" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind16" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind17" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind17" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind18" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind18" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind19" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind19" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind20" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind20" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind21" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind21" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind22" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind22" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind23" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind23" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind24" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind24" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind25" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind25" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind26" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind26" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind27" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind27" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind28" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="2" doName="Ind28" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm1" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm1" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm2" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm2" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm3" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm3" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm4" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm4" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm5" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm5" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm6" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm6" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm7" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm7" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm9" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm9" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm10" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm10" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm11" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm11" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm12" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm12" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm13" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm13" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm14" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm14" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm15" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm15" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm16" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm16" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm17" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm17" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm18" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="DevAlm" lnClass="GGIO" lnInst="1" doName="Alm18" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm1" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm1" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm2" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm2" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm3" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm3" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm4" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm4" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm5" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm5" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm6" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm6" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm7" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm7" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm8" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm8" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm9" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm9" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm10" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm10" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm11" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm11" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm12" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm12" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm13" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm13" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm14" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm14" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm15" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm15" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm16" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm16" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm17" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm17" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm18" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm18" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm19" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm19" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm20" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm20" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm21" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm21" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm22" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm22" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm23" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm23" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm24" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm24" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm25" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm25" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm26" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm26" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm27" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm27" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm28" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm28" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm29" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm29" daName="t" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm30" daName="stVal" fc="ST"/>
							<FCDA ldInst="RPIT" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm30" daName="t" fc="ST"/>
						</DataSet>
						<DataSet name="dsGOOSE2" desc="直流信号">
							<FCDA ldInst="RPIT" prefix="CondMeas" lnClass="GGIO" lnInst="1" doName="AnIn1" daName="mag.f" fc="MX"/>
							<FCDA ldInst="RPIT" prefix="CondMeas" lnClass="GGIO" lnInst="1" doName="AnIn2" daName="mag.f" fc="MX"/>
							<FCDA ldInst="RPIT" prefix="CondMeas" lnClass="GGIO" lnInst="1" doName="AnIn3" daName="mag.f" fc="MX"/>
							<FCDA ldInst="RPIT" prefix="CondMeas" lnClass="GGIO" lnInst="1" doName="AnIn4" daName="mag.f" fc="MX"/>
							<FCDA ldInst="RPIT" prefix="CondMeas" lnClass="GGIO" lnInst="1" doName="AnIn5" daName="mag.f" fc="MX"/>
							<FCDA ldInst="RPIT" prefix="CondMeas" lnClass="GGIO" lnInst="1" doName="AnIn6" daName="mag.f" fc="MX"/>
							<FCDA ldInst="RPIT" prefix="CondMeas" lnClass="GGIO" lnInst="1" doName="AnIn7" daName="mag.f" fc="MX"/>
							<FCDA ldInst="RPIT" prefix="CondMeas" lnClass="GGIO" lnInst="1" doName="AnIn8" daName="mag.f" fc="MX"/>
							<FCDA ldInst="RPIT" prefix="CondMeas" lnClass="GGIO" lnInst="1" doName="AnIn9" daName="mag.f" fc="MX"/>
							<FCDA ldInst="RPIT" prefix="CondMeas" lnClass="GGIO" lnInst="1" doName="AnIn10" daName="mag.f" fc="MX"/>
						</DataSet>
						<GSEControl name="gocb0" desc="位置及保护信号" datSet="dsGOOSE0" confRev="1" type="GOOSE" appID="RPIT/LLN0$GO$gocb0"/>
						<GSEControl name="gocb1" desc="测控信号" datSet="dsGOOSE1" confRev="1" type="GOOSE" appID="RPIT/LLN0$GO$gocb1"/>
						<GSEControl name="gocb2" desc="直流信号" datSet="dsGOOSE2" confRev="1" type="GOOSE" appID="RPIT/LLN0$GO$gocb2"/>
					</LN0>
					<LN lnClass="LPHD" lnType="1_GNR_LPHD_0" inst="1"/>
					<LN prefix="Q0" lnClass="XCBR" lnType="1_GNR_RPIT_XCBR" inst="1" desc="总断路器">
						<DOI name="Pos" desc="总断路器位置">
							<DAI name="stVal" sAddr="2.1.0.0"/>
							<DAI name="q" sAddr="2.2.0.0"/>
							<DAI name="t" sAddr="2.3.0.0"/>
							<DAI name="dU">
								<Val>总断路器位置</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="Q0A" lnClass="XCBR" lnType="1_GNR_RPIT_XCBR" inst="1" desc="A相断路器">
						<DOI name="Pos" desc="A相断路器位置">
							<DAI name="stVal" sAddr="2.1.1.0"/>
							<DAI name="q" sAddr="2.2.1.0"/>
							<DAI name="t" sAddr="2.3.1.0"/>
							<DAI name="dU">
								<Val>A相断路器位置</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="Q0B" lnClass="XCBR" lnType="1_GNR_RPIT_XCBR" inst="1" desc="B相断路器">
						<DOI name="Pos" desc="B相断路器位置">
							<DAI name="stVal" sAddr="2.1.2.0"/>
							<DAI name="q" sAddr="2.2.2.0"/>
							<DAI name="t" sAddr="2.3.2.0"/>
							<DAI name="dU">
								<Val>B相断路器位置</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="Q0C" lnClass="XCBR" lnType="1_GNR_RPIT_XCBR" inst="1" desc="C相断路器">
						<DOI name="Pos" desc="C相断路器位置">
							<DAI name="stVal" sAddr="2.1.3.0"/>
							<DAI name="q" sAddr="2.2.3.0"/>
							<DAI name="t" sAddr="2.3.3.0"/>
							<DAI name="dU">
								<Val>C相断路器位置</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="QG1" lnClass="XSWI" lnType="1_GNR_RPIT_XSWI" inst="1" desc="闸刀1">
						<DOI name="Pos" desc="闸刀1位置">
							<DAI name="stVal" sAddr="2.1.4.0"/>
							<DAI name="q" sAddr="2.2.4.0"/>
							<DAI name="t" sAddr="2.3.4.0"/>
							<DAI name="dU">
								<Val>闸刀1位置</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="QG2" lnClass="XSWI" lnType="1_GNR_RPIT_XSWI" inst="1" desc="闸刀2">
						<DOI name="Pos" desc="闸刀2位置">
							<DAI name="stVal" sAddr="2.1.5.0"/>
							<DAI name="q" sAddr="2.2.5.0"/>
							<DAI name="t" sAddr="2.3.5.0"/>
							<DAI name="dU">
								<Val>闸刀2位置</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="QG3" lnClass="XSWI" lnType="1_GNR_RPIT_XSWI" inst="1" desc="闸刀3">
						<DOI name="Pos" desc="闸刀3位置">
							<DAI name="stVal" sAddr="2.1.6.0"/>
							<DAI name="q" sAddr="2.2.6.0"/>
							<DAI name="t" sAddr="2.3.6.0"/>
							<DAI name="dU">
								<Val>闸刀3位置</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="QG4" lnClass="XSWI" lnType="1_GNR_RPIT_XSWI" inst="1" desc="闸刀4">
						<DOI name="Pos" desc="闸刀4位置">
							<DAI name="stVal" sAddr="2.1.7.0"/>
							<DAI name="q" sAddr="2.2.7.0"/>
							<DAI name="t" sAddr="2.3.7.0"/>
							<DAI name="dU">
								<Val>闸刀4位置</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="QGD1" lnClass="XSWI" lnType="1_GNR_RPIT_XSWI" inst="1" desc="接地闸刀1">
						<DOI name="Pos" desc="接地闸刀1位置">
							<DAI name="stVal" sAddr="2.1.8.0"/>
							<DAI name="q" sAddr="2.2.8.0"/>
							<DAI name="t" sAddr="2.3.8.0"/>
							<DAI name="dU">
								<Val>接地闸刀1位置</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="QGD2" lnClass="XSWI" lnType="1_GNR_RPIT_XSWI" inst="1" desc="接地闸刀2">
						<DOI name="Pos" desc="接地闸刀2位置">
							<DAI name="stVal" sAddr="2.1.9.0"/>
							<DAI name="q" sAddr="2.2.9.0"/>
							<DAI name="t" sAddr="2.3.9.0"/>
							<DAI name="dU">
								<Val>接地闸刀2位置</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="QGD3" lnClass="XSWI" lnType="1_GNR_RPIT_XSWI" inst="1" desc="接地闸刀3">
						<DOI name="Pos" desc="接地闸刀3位置">
							<DAI name="stVal" sAddr="2.1.10.0"/>
							<DAI name="q" sAddr="2.2.10.0"/>
							<DAI name="t" sAddr="2.3.10.0"/>
							<DAI name="dU">
								<Val>接地闸刀3位置</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="BinIn" lnClass="GGIO" lnType="1_GNR_RPIT_GGIO_Ind32" inst="1" desc="开关量输入1">
						<DOI name="Ind1" desc="检修">
							<DAI name="stVal" sAddr="1.1.0.0"/>
							<DAI name="q" sAddr="1.2.0.0"/>
							<DAI name="t" sAddr="1.3.0.0"/>
							<DAI name="dU">
								<Val>检修</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="复归">
							<DAI name="stVal" sAddr="1.1.1.0"/>
							<DAI name="q" sAddr="1.2.1.0"/>
							<DAI name="t" sAddr="1.3.1.0"/>
							<DAI name="dU">
								<Val>复归</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="备用Ind3">
							<DAI name="dU">
								<Val>备用Ind3</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="手合开入">
							<DAI name="stVal" sAddr="1.1.3.0"/>
							<DAI name="q" sAddr="1.2.3.0"/>
							<DAI name="t" sAddr="1.3.3.0"/>
							<DAI name="dU">
								<Val>手合开入</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="手跳开入">
							<DAI name="stVal" sAddr="1.1.7.0"/>
							<DAI name="q" sAddr="1.2.7.0"/>
							<DAI name="t" sAddr="1.3.7.0"/>
							<DAI name="dU">
								<Val>手跳开入</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="TJF三跳不启动重合闸">
							<DAI name="stVal" sAddr="1.1.20.0"/>
							<DAI name="q" sAddr="1.2.20.0"/>
							<DAI name="t" sAddr="1.3.20.0"/>
							<DAI name="dU">
								<Val>TJF三跳不启动重合闸</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="跳闸压力低">
							<DAI name="stVal" sAddr="1.1.26.0"/>
							<DAI name="q" sAddr="1.2.26.0"/>
							<DAI name="t" sAddr="1.3.26.0"/>
							<DAI name="dU">
								<Val>跳闸压力低</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="合闸压力低">
							<DAI name="stVal" sAddr="1.1.27.0"/>
							<DAI name="q" sAddr="1.2.27.0"/>
							<DAI name="t" sAddr="1.3.27.0"/>
							<DAI name="dU">
								<Val>合闸压力低</Val>
							</DAI>
						</DOI>
						<DOI name="Ind9" desc="操作压力低">
							<DAI name="stVal" sAddr="1.1.29.0"/>
							<DAI name="q" sAddr="1.2.29.0"/>
							<DAI name="t" sAddr="1.3.29.0"/>
							<DAI name="dU">
								<Val>操作压力低</Val>
							</DAI>
						</DOI>
						<DOI name="Ind10" desc="另一套智能终端告警">
							<DAI name="stVal" sAddr="1.1.34.0"/>
							<DAI name="q" sAddr="1.2.34.0"/>
							<DAI name="t" sAddr="1.3.34.0"/>
							<DAI name="dU">
								<Val>另一套智能终端告警</Val>
							</DAI>
						</DOI>
						<DOI name="Ind11" desc="另一套智能终端闭锁">
							<DAI name="stVal" sAddr="1.1.35.0"/>
							<DAI name="q" sAddr="1.2.35.0"/>
							<DAI name="t" sAddr="1.3.35.0"/>
							<DAI name="dU">
								<Val>另一套智能终端闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="Ind12" desc="另一套智能终端重合">
							<DAI name="stVal" sAddr="1.1.33.0"/>
							<DAI name="q" sAddr="1.2.33.0"/>
							<DAI name="t" sAddr="1.3.33.0"/>
							<DAI name="dU">
								<Val>另一套智能终端重合</Val>
							</DAI>
						</DOI>
						<DOI name="Ind13" desc="YJJ节点类型选择">
							<DAI name="stVal" sAddr="1.1.64.0"/>
							<DAI name="q" sAddr="1.2.64.0"/>
							<DAI name="t" sAddr="1.3.64.0"/>
							<DAI name="dU">
								<Val>YJJ节点类型选择</Val>
							</DAI>
						</DOI>
						<DOI name="Ind14" desc="备用遥信2">
							<DAI name="stVal" sAddr="1.1.65.0"/>
							<DAI name="q" sAddr="1.2.65.0"/>
							<DAI name="t" sAddr="1.3.65.0"/>
							<DAI name="dU">
								<Val>备用遥信2</Val>
							</DAI>
						</DOI>
						<DOI name="Ind15" desc="备用遥信3">
							<DAI name="stVal" sAddr="1.1.66.0"/>
							<DAI name="q" sAddr="1.2.66.0"/>
							<DAI name="t" sAddr="1.3.66.0"/>
							<DAI name="dU">
								<Val>备用遥信3</Val>
							</DAI>
						</DOI>
						<DOI name="Ind16" desc="操作箱类型选择">
							<DAI name="stVal" sAddr="1.1.67.0"/>
							<DAI name="q" sAddr="1.2.67.0"/>
							<DAI name="t" sAddr="1.3.67.0"/>
							<DAI name="dU">
								<Val>操作箱类型选择</Val>
							</DAI>
						</DOI>
						<DOI name="Ind17" desc="备用遥信5">
							<DAI name="stVal" sAddr="1.1.68.0"/>
							<DAI name="q" sAddr="1.2.68.0"/>
							<DAI name="t" sAddr="1.3.68.0"/>
							<DAI name="dU">
								<Val>备用遥信5</Val>
							</DAI>
						</DOI>
						<DOI name="Ind18" desc="备用遥信6">
							<DAI name="stVal" sAddr="1.1.69.0"/>
							<DAI name="q" sAddr="1.2.69.0"/>
							<DAI name="t" sAddr="1.3.69.0"/>
							<DAI name="dU">
								<Val>备用遥信6</Val>
							</DAI>
						</DOI>
						<DOI name="Ind19" desc="备用遥信7">
							<DAI name="stVal" sAddr="1.1.70.0"/>
							<DAI name="q" sAddr="1.2.70.0"/>
							<DAI name="t" sAddr="1.3.70.0"/>
							<DAI name="dU">
								<Val>备用遥信7</Val>
							</DAI>
						</DOI>
						<DOI name="Ind20" desc="备用遥信8">
							<DAI name="stVal" sAddr="1.1.71.0"/>
							<DAI name="q" sAddr="1.2.71.0"/>
							<DAI name="t" sAddr="1.3.71.0"/>
							<DAI name="dU">
								<Val>备用遥信8</Val>
							</DAI>
						</DOI>
						<DOI name="Ind21" desc="备用遥信9">
							<DAI name="stVal" sAddr="1.1.72.0"/>
							<DAI name="q" sAddr="1.2.72.0"/>
							<DAI name="t" sAddr="1.3.72.0"/>
							<DAI name="dU">
								<Val>备用遥信9</Val>
							</DAI>
						</DOI>
						<DOI name="Ind22" desc="备用遥信10">
							<DAI name="stVal" sAddr="1.1.73.0"/>
							<DAI name="q" sAddr="1.2.73.0"/>
							<DAI name="t" sAddr="1.3.73.0"/>
							<DAI name="dU">
								<Val>备用遥信10</Val>
							</DAI>
						</DOI>
						<DOI name="Ind23" desc="备用遥信11">
							<DAI name="stVal" sAddr="1.1.74.0"/>
							<DAI name="q" sAddr="1.2.74.0"/>
							<DAI name="t" sAddr="1.3.74.0"/>
							<DAI name="dU">
								<Val>备用遥信11</Val>
							</DAI>
						</DOI>
						<DOI name="Ind24" desc="备用遥信12">
							<DAI name="stVal" sAddr="1.1.75.0"/>
							<DAI name="q" sAddr="1.2.75.0"/>
							<DAI name="t" sAddr="1.3.75.0"/>
							<DAI name="dU">
								<Val>备用遥信12</Val>
							</DAI>
						</DOI>
						<DOI name="Ind25" desc="备用遥信13">
							<DAI name="stVal" sAddr="1.1.76.0"/>
							<DAI name="q" sAddr="1.2.76.0"/>
							<DAI name="t" sAddr="1.3.76.0"/>
							<DAI name="dU">
								<Val>备用遥信13</Val>
							</DAI>
						</DOI>
						<DOI name="Ind26" desc="备用遥信14">
							<DAI name="stVal" sAddr="1.1.77.0"/>
							<DAI name="q" sAddr="1.2.77.0"/>
							<DAI name="t" sAddr="1.3.77.0"/>
							<DAI name="dU">
								<Val>备用遥信14</Val>
							</DAI>
						</DOI>
						<DOI name="Ind27" desc="备用遥信15">
							<DAI name="stVal" sAddr="1.1.78.0"/>
							<DAI name="q" sAddr="1.2.78.0"/>
							<DAI name="t" sAddr="1.3.78.0"/>
							<DAI name="dU">
								<Val>备用遥信15</Val>
							</DAI>
						</DOI>
						<DOI name="Ind28" desc="备用遥信16">
							<DAI name="stVal" sAddr="1.1.79.0"/>
							<DAI name="q" sAddr="1.2.79.0"/>
							<DAI name="t" sAddr="1.3.79.0"/>
							<DAI name="dU">
								<Val>备用遥信16</Val>
							</DAI>
						</DOI>
						<DOI name="Ind29" desc="备用遥信17">
							<DAI name="stVal" sAddr="1.1.80.0"/>
							<DAI name="q" sAddr="1.2.80.0"/>
							<DAI name="t" sAddr="1.3.80.0"/>
							<DAI name="dU">
								<Val>备用遥信17</Val>
							</DAI>
						</DOI>
						<DOI name="Ind30" desc="备用遥信18">
							<DAI name="stVal" sAddr="1.1.81.0"/>
							<DAI name="q" sAddr="1.2.81.0"/>
							<DAI name="t" sAddr="1.3.81.0"/>
							<DAI name="dU">
								<Val>备用遥信18</Val>
							</DAI>
						</DOI>
						<DOI name="Ind31" desc="备用遥信19">
							<DAI name="stVal" sAddr="1.1.82.0"/>
							<DAI name="q" sAddr="1.2.82.0"/>
							<DAI name="t" sAddr="1.3.82.0"/>
							<DAI name="dU">
								<Val>备用遥信19</Val>
							</DAI>
						</DOI>
						<DOI name="Ind32" desc="备用遥信20">
							<DAI name="stVal" sAddr="1.1.83.0"/>
							<DAI name="q" sAddr="1.2.83.0"/>
							<DAI name="t" sAddr="1.3.83.0"/>
							<DAI name="dU">
								<Val>备用遥信20</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="BinIn" lnClass="GGIO" lnType="1_GNR_RPIT_GGIO_Ind32" inst="2" desc="开关量输入2">
						<DOI name="Ind1" desc="备用遥信21">
							<DAI name="stVal" sAddr="1.1.84.0"/>
							<DAI name="q" sAddr="1.2.84.0"/>
							<DAI name="t" sAddr="1.3.84.0"/>
							<DAI name="dU">
								<Val>备用遥信21</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="备用遥信22">
							<DAI name="stVal" sAddr="1.1.85.0"/>
							<DAI name="q" sAddr="1.2.85.0"/>
							<DAI name="t" sAddr="1.3.85.0"/>
							<DAI name="dU">
								<Val>备用遥信22</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="备用遥信23">
							<DAI name="stVal" sAddr="1.1.86.0"/>
							<DAI name="q" sAddr="1.2.86.0"/>
							<DAI name="t" sAddr="1.3.86.0"/>
							<DAI name="dU">
								<Val>备用遥信23</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="备用遥信24">
							<DAI name="stVal" sAddr="1.1.87.0"/>
							<DAI name="q" sAddr="1.2.87.0"/>
							<DAI name="t" sAddr="1.3.87.0"/>
							<DAI name="dU">
								<Val>备用遥信24</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="备用遥信25">
							<DAI name="stVal" sAddr="1.1.88.0"/>
							<DAI name="q" sAddr="1.2.88.0"/>
							<DAI name="t" sAddr="1.3.88.0"/>
							<DAI name="dU">
								<Val>备用遥信25</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="备用遥信26">
							<DAI name="stVal" sAddr="1.1.89.0"/>
							<DAI name="q" sAddr="1.2.89.0"/>
							<DAI name="t" sAddr="1.3.89.0"/>
							<DAI name="dU">
								<Val>备用遥信26</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="备用遥信27">
							<DAI name="stVal" sAddr="1.1.90.0"/>
							<DAI name="q" sAddr="1.2.90.0"/>
							<DAI name="t" sAddr="1.3.90.0"/>
							<DAI name="dU">
								<Val>备用遥信27</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="备用遥信28">
							<DAI name="stVal" sAddr="1.1.91.0"/>
							<DAI name="q" sAddr="1.2.91.0"/>
							<DAI name="t" sAddr="1.3.91.0"/>
							<DAI name="dU">
								<Val>备用遥信28</Val>
							</DAI>
						</DOI>
						<DOI name="Ind9" desc="备用遥信29">
							<DAI name="stVal" sAddr="1.1.92.0"/>
							<DAI name="q" sAddr="1.2.92.0"/>
							<DAI name="t" sAddr="1.3.92.0"/>
							<DAI name="dU">
								<Val>备用遥信29</Val>
							</DAI>
						</DOI>
						<DOI name="Ind10" desc="备用遥信30">
							<DAI name="stVal" sAddr="1.1.93.0"/>
							<DAI name="q" sAddr="1.2.93.0"/>
							<DAI name="t" sAddr="1.3.93.0"/>
							<DAI name="dU">
								<Val>备用遥信30</Val>
							</DAI>
						</DOI>
						<DOI name="Ind11" desc="备用遥信31">
							<DAI name="stVal" sAddr="1.1.94.0"/>
							<DAI name="q" sAddr="1.2.94.0"/>
							<DAI name="t" sAddr="1.3.94.0"/>
							<DAI name="dU">
								<Val>备用遥信31</Val>
							</DAI>
						</DOI>
						<DOI name="Ind12" desc="备用遥信32">
							<DAI name="stVal" sAddr="1.1.95.0"/>
							<DAI name="q" sAddr="1.2.95.0"/>
							<DAI name="t" sAddr="1.3.95.0"/>
							<DAI name="dU">
								<Val>备用遥信32</Val>
							</DAI>
						</DOI>
						<DOI name="Ind13" desc="备用遥信33">
							<DAI name="stVal" sAddr="1.1.96.0"/>
							<DAI name="q" sAddr="1.2.96.0"/>
							<DAI name="t" sAddr="1.3.96.0"/>
							<DAI name="dU">
								<Val>备用遥信33</Val>
							</DAI>
						</DOI>
						<DOI name="Ind14" desc="备用遥信34">
							<DAI name="stVal" sAddr="1.1.97.0"/>
							<DAI name="q" sAddr="1.2.97.0"/>
							<DAI name="t" sAddr="1.3.97.0"/>
							<DAI name="dU">
								<Val>备用遥信34</Val>
							</DAI>
						</DOI>
						<DOI name="Ind15" desc="备用遥信35">
							<DAI name="stVal" sAddr="1.1.98.0"/>
							<DAI name="q" sAddr="1.2.98.0"/>
							<DAI name="t" sAddr="1.3.98.0"/>
							<DAI name="dU">
								<Val>备用遥信35</Val>
							</DAI>
						</DOI>
						<DOI name="Ind16" desc="备用遥信36">
							<DAI name="stVal" sAddr="1.1.99.0"/>
							<DAI name="q" sAddr="1.2.99.0"/>
							<DAI name="t" sAddr="1.3.99.0"/>
							<DAI name="dU">
								<Val>备用遥信36</Val>
							</DAI>
						</DOI>
						<DOI name="Ind17" desc="备用遥信37">
							<DAI name="stVal" sAddr="1.1.100.0"/>
							<DAI name="q" sAddr="1.2.100.0"/>
							<DAI name="t" sAddr="1.3.100.0"/>
							<DAI name="dU">
								<Val>备用遥信37</Val>
							</DAI>
						</DOI>
						<DOI name="Ind18" desc="备用遥信38">
							<DAI name="stVal" sAddr="1.1.101.0"/>
							<DAI name="q" sAddr="1.2.101.0"/>
							<DAI name="t" sAddr="1.3.101.0"/>
							<DAI name="dU">
								<Val>备用遥信38</Val>
							</DAI>
						</DOI>
						<DOI name="Ind19" desc="备用遥信39">
							<DAI name="stVal" sAddr="1.1.102.0"/>
							<DAI name="q" sAddr="1.2.102.0"/>
							<DAI name="t" sAddr="1.3.102.0"/>
							<DAI name="dU">
								<Val>备用遥信39</Val>
							</DAI>
						</DOI>
						<DOI name="Ind20" desc="备用遥信40">
							<DAI name="stVal" sAddr="1.1.103.0"/>
							<DAI name="q" sAddr="1.2.103.0"/>
							<DAI name="t" sAddr="1.3.103.0"/>
							<DAI name="dU">
								<Val>备用遥信40</Val>
							</DAI>
						</DOI>
						<DOI name="Ind21" desc="备用遥信41">
							<DAI name="stVal" sAddr="1.1.104.0"/>
							<DAI name="q" sAddr="1.2.104.0"/>
							<DAI name="t" sAddr="1.3.104.0"/>
							<DAI name="dU">
								<Val>备用遥信41</Val>
							</DAI>
						</DOI>
						<DOI name="Ind22" desc="备用遥信42">
							<DAI name="stVal" sAddr="1.1.105.0"/>
							<DAI name="q" sAddr="1.2.105.0"/>
							<DAI name="t" sAddr="1.3.105.0"/>
							<DAI name="dU">
								<Val>备用遥信42</Val>
							</DAI>
						</DOI>
						<DOI name="Ind23" desc="备用遥信43">
							<DAI name="stVal" sAddr="1.1.106.0"/>
							<DAI name="q" sAddr="1.2.106.0"/>
							<DAI name="t" sAddr="1.3.106.0"/>
							<DAI name="dU">
								<Val>备用遥信43</Val>
							</DAI>
						</DOI>
						<DOI name="Ind24" desc="备用遥信44">
							<DAI name="stVal" sAddr="1.1.107.0"/>
							<DAI name="q" sAddr="1.2.107.0"/>
							<DAI name="t" sAddr="1.3.107.0"/>
							<DAI name="dU">
								<Val>备用遥信44</Val>
							</DAI>
						</DOI>
						<DOI name="Ind25" desc="备用遥信45">
							<DAI name="stVal" sAddr="1.1.108.0"/>
							<DAI name="q" sAddr="1.2.108.0"/>
							<DAI name="t" sAddr="1.3.108.0"/>
							<DAI name="dU">
								<Val>备用遥信45</Val>
							</DAI>
						</DOI>
						<DOI name="Ind26" desc="备用遥信46">
							<DAI name="stVal" sAddr="1.1.109.0"/>
							<DAI name="q" sAddr="1.2.109.0"/>
							<DAI name="t" sAddr="1.3.109.0"/>
							<DAI name="dU">
								<Val>备用遥信46</Val>
							</DAI>
						</DOI>
						<DOI name="Ind27" desc="备用遥信47">
							<DAI name="stVal" sAddr="1.1.110.0"/>
							<DAI name="q" sAddr="1.2.110.0"/>
							<DAI name="t" sAddr="1.3.110.0"/>
							<DAI name="dU">
								<Val>备用遥信47</Val>
							</DAI>
						</DOI>
						<DOI name="Ind28" desc="备用遥信48">
							<DAI name="stVal" sAddr="1.1.111.0"/>
							<DAI name="q" sAddr="1.2.111.0"/>
							<DAI name="t" sAddr="1.3.111.0"/>
							<DAI name="dU">
								<Val>备用遥信48</Val>
							</DAI>
						</DOI>
						<DOI name="Ind29" desc="备用遥信49">
							<DAI name="stVal" sAddr="1.1.112.0"/>
							<DAI name="q" sAddr="1.2.112.0"/>
							<DAI name="t" sAddr="1.3.112.0"/>
							<DAI name="dU">
								<Val>备用遥信49</Val>
							</DAI>
						</DOI>
						<DOI name="Ind30" desc="备用遥信50">
							<DAI name="stVal" sAddr="1.1.113.0"/>
							<DAI name="q" sAddr="1.2.113.0"/>
							<DAI name="t" sAddr="1.3.113.0"/>
							<DAI name="dU">
								<Val>备用遥信50</Val>
							</DAI>
						</DOI>
						<DOI name="Ind31" desc="备用遥信51">
							<DAI name="stVal" sAddr="1.1.114.0"/>
							<DAI name="q" sAddr="1.2.114.0"/>
							<DAI name="t" sAddr="1.3.114.0"/>
							<DAI name="dU">
								<Val>备用遥信51</Val>
							</DAI>
						</DOI>
						<DOI name="Ind32" desc="备用遥信52">
							<DAI name="stVal" sAddr="1.1.115.0"/>
							<DAI name="q" sAddr="1.2.115.0"/>
							<DAI name="t" sAddr="1.3.115.0"/>
							<DAI name="dU">
								<Val>备用遥信52</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="BinIn" lnClass="GGIO" lnType="1_GNR_RPIT_GGIO_Ind32" inst="3" desc="开关量输入3">
						<DOI name="Ind1" desc="备用遥信53">
							<DAI name="stVal" sAddr="1.1.116.0"/>
							<DAI name="q" sAddr="1.2.116.0"/>
							<DAI name="t" sAddr="1.3.116.0"/>
							<DAI name="dU">
								<Val>备用遥信53</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="备用遥信54">
							<DAI name="stVal" sAddr="1.1.117.0"/>
							<DAI name="q" sAddr="1.2.117.0"/>
							<DAI name="t" sAddr="1.3.117.0"/>
							<DAI name="dU">
								<Val>备用遥信54</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="备用遥信55">
							<DAI name="stVal" sAddr="1.1.118.0"/>
							<DAI name="q" sAddr="1.2.118.0"/>
							<DAI name="t" sAddr="1.3.118.0"/>
							<DAI name="dU">
								<Val>备用遥信55</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="备用遥信56">
							<DAI name="stVal" sAddr="1.1.119.0"/>
							<DAI name="q" sAddr="1.2.119.0"/>
							<DAI name="t" sAddr="1.3.119.0"/>
							<DAI name="dU">
								<Val>备用遥信56</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="备用遥信57">
							<DAI name="stVal" sAddr="1.1.120.0"/>
							<DAI name="q" sAddr="1.2.120.0"/>
							<DAI name="t" sAddr="1.3.120.0"/>
							<DAI name="dU">
								<Val>备用遥信57</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="备用遥信58">
							<DAI name="stVal" sAddr="1.1.121.0"/>
							<DAI name="q" sAddr="1.2.121.0"/>
							<DAI name="t" sAddr="1.3.121.0"/>
							<DAI name="dU">
								<Val>备用遥信58</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="备用遥信59">
							<DAI name="stVal" sAddr="1.1.122.0"/>
							<DAI name="q" sAddr="1.2.122.0"/>
							<DAI name="t" sAddr="1.3.122.0"/>
							<DAI name="dU">
								<Val>备用遥信59</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="重合压力低">
							<DAI name="stVal" sAddr="1.1.28.0"/>
							<DAI name="q" sAddr="1.2.28.0"/>
							<DAI name="t" sAddr="1.3.28.0"/>
							<DAI name="dU">
								<Val>重合压力低</Val>
							</DAI>
						</DOI>
						<DOI name="Ind9" desc="三跳不启重合启失灵">
							<DAI name="stVal" sAddr="1.1.6.0"/>
							<DAI name="q" sAddr="1.2.6.0"/>
							<DAI name="t" sAddr="1.3.6.0"/>
							<DAI name="dU">
								<Val>三跳不启重合启失灵</Val>
							</DAI>
						</DOI>
						<DOI name="Ind10" desc="三跳启动重合闸">
							<DAI name="stVal" sAddr="1.1.5.0"/>
							<DAI name="q" sAddr="1.2.5.0"/>
							<DAI name="t" sAddr="1.3.5.0"/>
							<DAI name="dU">
								<Val>三跳启动重合闸</Val>
							</DAI>
						</DOI>
						<DOI name="Ind11" desc="另一个操作箱闭重">
							<DAI name="stVal" sAddr="1.1.36.0"/>
							<DAI name="q" sAddr="1.2.36.0"/>
							<DAI name="t" sAddr="1.3.36.0"/>
							<DAI name="dU">
								<Val>另一个操作箱闭重</Val>
							</DAI>
						</DOI>
						<DOI name="Ind12" desc="备用遥信64">
							<DAI name="dU">
								<Val>备用遥信64</Val>
							</DAI>
						</DOI>
						<DOI name="Ind13" desc="备用遥信65">
							<DAI name="dU">
								<Val>备用遥信65</Val>
							</DAI>
						</DOI>
						<DOI name="Ind14" desc="备用遥信66">
							<DAI name="dU">
								<Val>备用遥信66</Val>
							</DAI>
						</DOI>
						<DOI name="Ind15" desc="备用遥信67">
							<DAI name="dU">
								<Val>备用遥信67</Val>
							</DAI>
						</DOI>
						<DOI name="Ind16" desc="备用遥信68">
							<DAI name="dU">
								<Val>备用遥信30</Val>
							</DAI>
						</DOI>
						<DOI name="Ind17" desc="备用遥信69">
							<DAI name="dU">
								<Val>备用遥信30</Val>
							</DAI>
						</DOI>
						<DOI name="Ind18" desc="备用遥信70">
							<DAI name="dU">
								<Val>备用遥信30</Val>
							</DAI>
						</DOI>
						<DOI name="Ind19" desc="备用遥信71">
							<DAI name="dU">
								<Val>备用遥信30</Val>
							</DAI>
						</DOI>
						<DOI name="Ind20" desc="备用遥信72">
							<DAI name="dU">
								<Val>备用遥信30</Val>
							</DAI>
						</DOI>
						<DOI name="Ind21" desc="备用遥信73">
							<DAI name="dU">
								<Val>备用遥信30</Val>
							</DAI>
						</DOI>
						<DOI name="Ind22" desc="备用遥信74">
							<DAI name="dU">
								<Val>备用遥信30</Val>
							</DAI>
						</DOI>
						<DOI name="Ind23" desc="备用遥信75">
							<DAI name="dU">
								<Val>备用遥信30</Val>
							</DAI>
						</DOI>
						<DOI name="Ind24" desc="备用遥信76">
							<DAI name="dU">
								<Val>备用遥信30</Val>
							</DAI>
						</DOI>
						<DOI name="Ind25" desc="备用遥信77">
							<DAI name="dU">
								<Val>备用遥信30</Val>
							</DAI>
						</DOI>
						<DOI name="Ind26" desc="备用遥信78">
							<DAI name="dU">
								<Val>备用遥信30</Val>
							</DAI>
						</DOI>
						<DOI name="Ind27" desc="备用遥信79">
							<DAI name="dU">
								<Val>备用遥信30</Val>
							</DAI>
						</DOI>
						<DOI name="Ind28" desc="备用遥信80">
							<DAI name="dU">
								<Val>备用遥信30</Val>
							</DAI>
						</DOI>
						<DOI name="Ind29" desc="备用遥信81">
							<DAI name="dU">
								<Val>备用遥信30</Val>
							</DAI>
						</DOI>
						<DOI name="Ind30" desc="备用遥信82">
							<DAI name="dU">
								<Val>备用遥信30</Val>
							</DAI>
						</DOI>
						<DOI name="Ind31" desc="备用遥信83">
							<DAI name="dU">
								<Val>备用遥信30</Val>
							</DAI>
						</DOI>
						<DOI name="Ind32" desc="备用遥信84">
							<DAI name="dU">
								<Val>备用遥信30</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="ProtIn" lnClass="GGIO" lnType="1_GNR_RPIT_GGIO_Ind32" inst="3" desc="保护软信号">
						<DOI name="Ind1" desc="闭锁重合闸">
							<DAI name="stVal" sAddr="1.1.44.0"/>
							<DAI name="q" sAddr="1.2.44.0"/>
							<DAI name="t" sAddr="1.3.44.0"/>
							<DAI name="dU">
								<Val>闭锁重合闸</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="事故总">
							<DAI name="stVal" sAddr="1.1.2.0"/>
							<DAI name="q" sAddr="1.2.2.0"/>
							<DAI name="t" sAddr="1.3.2.0"/>
							<DAI name="dU">
								<Val>事故总</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="控制回路断线">
							<DAI name="stVal" sAddr="1.1.37.0"/>
							<DAI name="q" sAddr="1.2.37.0"/>
							<DAI name="t" sAddr="1.3.37.0"/>
							<DAI name="dU">
								<Val>控制回路断线</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="断路器非全相">
							<DAI name="stVal" sAddr="1.1.45.0"/>
							<DAI name="q" sAddr="1.2.45.0"/>
							<DAI name="t" sAddr="1.3.45.0"/>
							<DAI name="dU">
								<Val>断路器非全相</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="合后位置">
							<DAI name="stVal" sAddr="1.1.46.0"/>
							<DAI name="q" sAddr="1.2.46.0"/>
							<DAI name="t" sAddr="1.3.46.0"/>
							<DAI name="dU">
								<Val>合后位置</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind8">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind9">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind10">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind11">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind12">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind13">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind14">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind15">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind16">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind17">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind18">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind19">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind20">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind21">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind22">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind23">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind24">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind25">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind26">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind27">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind28">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind29">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind30">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind31">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="Ind32">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOAlm" lnClass="GGIO" lnType="1_GNR_RPIT_GGIO_Alm32" inst="1" desc="GOOSE告警">
						<DOI name="Alm1" desc="GOOSE1告警">
							<DAI name="stVal" sAddr="1.1.288.0"/>
							<DAI name="q" sAddr="1.2.288.0"/>
							<DAI name="t" sAddr="1.3.288.0"/>
							<DAI name="dU">
								<Val>GOOSE1告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm2" desc="GOOSE2告警">
							<DAI name="stVal" sAddr="1.1.289.0"/>
							<DAI name="q" sAddr="1.2.289.0"/>
							<DAI name="t" sAddr="1.3.289.0"/>
							<DAI name="dU">
								<Val>GOOSE2网告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm3" desc="GOOSE3告警">
							<DAI name="stVal" sAddr="1.1.290.0"/>
							<DAI name="q" sAddr="1.2.290.0"/>
							<DAI name="t" sAddr="1.3.290.0"/>
							<DAI name="dU">
								<Val>GOOSE3告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm4" desc="GOOSE4告警">
							<DAI name="stVal" sAddr="1.1.291.0"/>
							<DAI name="q" sAddr="1.2.291.0"/>
							<DAI name="t" sAddr="1.3.291.0"/>
							<DAI name="dU">
								<Val>GOOSE4告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm5" desc="GOOSE5告警">
							<DAI name="stVal" sAddr="1.1.292.0"/>
							<DAI name="q" sAddr="1.2.292.0"/>
							<DAI name="t" sAddr="1.3.292.0"/>
							<DAI name="dU">
								<Val>GOOSE5告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm6" desc="GOOSE6告警">
							<DAI name="stVal" sAddr="1.1.293.0"/>
							<DAI name="q" sAddr="1.2.293.0"/>
							<DAI name="t" sAddr="1.3.293.0"/>
							<DAI name="dU">
								<Val>GOOSE6告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm7" desc="GOOSE7告警">
							<DAI name="stVal" sAddr="1.1.294.0"/>
							<DAI name="q" sAddr="1.2.294.0"/>
							<DAI name="t" sAddr="1.3.294.0"/>
							<DAI name="dU">
								<Val>GOOSE7告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm8" desc="GOOSE8告警">
							<DAI name="stVal" sAddr="1.1.295.0"/>
							<DAI name="q" sAddr="1.2.295.0"/>
							<DAI name="t" sAddr="1.3.295.0"/>
							<DAI name="dU">
								<Val>GOOSE8告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm9" desc="GOOSE9告警">
							<DAI name="stVal" sAddr="1.1.296.0"/>
							<DAI name="q" sAddr="1.2.296.0"/>
							<DAI name="t" sAddr="1.3.296.0"/>
							<DAI name="dU">
								<Val>GOOSE9告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm10" desc="GOOSE10告警">
							<DAI name="stVal" sAddr="1.1.297.0"/>
							<DAI name="q" sAddr="1.2.297.0"/>
							<DAI name="t" sAddr="1.3.297.0"/>
							<DAI name="dU">
								<Val>GOOSE10告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm11" desc="GOOSE11告警">
							<DAI name="stVal" sAddr="1.1.298.0"/>
							<DAI name="q" sAddr="1.2.298.0"/>
							<DAI name="t" sAddr="1.3.298.0"/>
							<DAI name="dU">
								<Val>GOOSE11告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm12" desc="GOOSE12告警">
							<DAI name="stVal" sAddr="1.1.299.0"/>
							<DAI name="q" sAddr="1.2.299.0"/>
							<DAI name="t" sAddr="1.3.299.0"/>
							<DAI name="dU">
								<Val>GOOSE12告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm13" desc="GOOSE13告警">
							<DAI name="stVal" sAddr="1.1.300.0"/>
							<DAI name="q" sAddr="1.2.300.0"/>
							<DAI name="t" sAddr="1.3.300.0"/>
							<DAI name="dU">
								<Val>GOOSE13告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm14" desc="GOOSE14告警">
							<DAI name="stVal" sAddr="1.1.301.0"/>
							<DAI name="q" sAddr="1.2.301.0"/>
							<DAI name="t" sAddr="1.3.301.0"/>
							<DAI name="dU">
								<Val>GOOSE14告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm15" desc="GOOSE15告警">
							<DAI name="stVal" sAddr="1.1.302.0"/>
							<DAI name="q" sAddr="1.2.302.0"/>
							<DAI name="t" sAddr="1.3.302.0"/>
							<DAI name="dU">
								<Val>GOOSE15告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm16" desc="GOOSE16告警">
							<DAI name="stVal" sAddr="1.1.303.0"/>
							<DAI name="q" sAddr="1.2.303.0"/>
							<DAI name="t" sAddr="1.3.303.0"/>
							<DAI name="dU">
								<Val>GOOSE16告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm17" desc="GOOSE17告警">
							<DAI name="stVal" sAddr="1.1.304.0"/>
							<DAI name="q" sAddr="1.2.304.0"/>
							<DAI name="t" sAddr="1.3.304.0"/>
							<DAI name="dU">
								<Val>GOOSE17告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm18" desc="GOOSE18告警">
							<DAI name="stVal" sAddr="1.1.305.0"/>
							<DAI name="q" sAddr="1.2.305.0"/>
							<DAI name="t" sAddr="1.3.305.0"/>
							<DAI name="dU">
								<Val>GOOSE18告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm19" desc="GOOSE19告警">
							<DAI name="stVal" sAddr="1.1.306.0"/>
							<DAI name="q" sAddr="1.2.306.0"/>
							<DAI name="t" sAddr="1.3.306.0"/>
							<DAI name="dU">
								<Val>GOOSE19告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm20" desc="GOOSE20告警">
							<DAI name="stVal" sAddr="1.1.307.0"/>
							<DAI name="q" sAddr="1.2.307.0"/>
							<DAI name="t" sAddr="1.3.307.0"/>
							<DAI name="dU">
								<Val>GOOSE20告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm21" desc="GOOSE21告警">
							<DAI name="stVal" sAddr="1.1.308.0"/>
							<DAI name="q" sAddr="1.2.308.0"/>
							<DAI name="t" sAddr="1.3.308.0"/>
							<DAI name="dU">
								<Val>GOOSE21告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm22" desc="GOOSE22告警">
							<DAI name="stVal" sAddr="1.1.309.0"/>
							<DAI name="q" sAddr="1.2.309.0"/>
							<DAI name="t" sAddr="1.3.309.0"/>
							<DAI name="dU">
								<Val>GOOSE22告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm23" desc="GOOSE23告警">
							<DAI name="stVal" sAddr="1.1.310.0"/>
							<DAI name="q" sAddr="1.2.310.0"/>
							<DAI name="t" sAddr="1.3.310.0"/>
							<DAI name="dU">
								<Val>GOOSE23告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm24" desc="GOOSE24告警">
							<DAI name="stVal" sAddr="1.1.311.0"/>
							<DAI name="q" sAddr="1.2.311.0"/>
							<DAI name="t" sAddr="1.3.311.0"/>
							<DAI name="dU">
								<Val>GOOSE24告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm25" desc="GOOSE25告警">
							<DAI name="stVal" sAddr="1.1.312.0"/>
							<DAI name="q" sAddr="1.2.312.0"/>
							<DAI name="t" sAddr="1.3.312.0"/>
							<DAI name="dU">
								<Val>GOOSE25告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm26" desc="GOOSE26告警">
							<DAI name="stVal" sAddr="1.1.313.0"/>
							<DAI name="q" sAddr="1.2.313.0"/>
							<DAI name="t" sAddr="1.3.313.0"/>
							<DAI name="dU">
								<Val>GOOSE26告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm27" desc="GOOSE27告警">
							<DAI name="stVal" sAddr="1.1.314.0"/>
							<DAI name="q" sAddr="1.2.314.0"/>
							<DAI name="t" sAddr="1.3.314.0"/>
							<DAI name="dU">
								<Val>GOOSE27告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm28" desc="GOOSE28告警">
							<DAI name="stVal" sAddr="1.1.315.0"/>
							<DAI name="q" sAddr="1.2.315.0"/>
							<DAI name="t" sAddr="1.3.315.0"/>
							<DAI name="dU">
								<Val>GOOSE28告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm29" desc="GOOSE29告警">
							<DAI name="stVal" sAddr="1.1.316.0"/>
							<DAI name="q" sAddr="1.2.316.0"/>
							<DAI name="t" sAddr="1.3.316.0"/>
							<DAI name="dU">
								<Val>GOOSE29告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm30" desc="GOOSE30告警">
							<DAI name="stVal" sAddr="1.1.317.0"/>
							<DAI name="q" sAddr="1.2.317.0"/>
							<DAI name="t" sAddr="1.3.317.0"/>
							<DAI name="dU">
								<Val>GOOSE30告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm31" desc="备用GOOSE告警1">
							<DAI name="dU">
								<Val>备用GOOSE告警1</Val>
							</DAI>
						</DOI>
						<DOI name="Alm32" desc="备用GOOSE告警2">
							<DAI name="dU">
								<Val>备用GOOSE告警2</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="DevAlm" lnClass="GGIO" lnType="1_GNR_RPIT_GGIO_Alm32" inst="1" desc="装置内部软信号">
						<DOI name="Alm1" desc="操作电源监视">
							<DAI name="stVal" sAddr="1.1.257.0"/>
							<DAI name="q" sAddr="1.2.257.0"/>
							<DAI name="t" sAddr="1.3.257.0"/>
							<DAI name="dU">
								<Val>操作电源监视</Val>
							</DAI>
						</DOI>
						<DOI name="Alm2" desc="光耦电源异常总">
							<DAI name="stVal" sAddr="1.1.256.0"/>
							<DAI name="q" sAddr="1.2.256.0"/>
							<DAI name="t" sAddr="1.3.256.0"/>
							<DAI name="dU">
								<Val>光耦电源异常总</Val>
							</DAI>
						</DOI>
						<DOI name="Alm3" desc="启动异常">
							<DAI name="stVal" sAddr="1.1.258.0"/>
							<DAI name="q" sAddr="1.2.258.0"/>
							<DAI name="t" sAddr="1.3.258.0"/>
							<DAI name="dU">
								<Val>启动异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm4" desc="内部CAN网异常">
							<DAI name="stVal" sAddr="1.1.259.0"/>
							<DAI name="q" sAddr="1.2.259.0"/>
							<DAI name="t" sAddr="1.3.259.0"/>
							<DAI name="dU">
								<Val>内部CAN网异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm5" desc="GPS对时信号异常">
							<DAI name="stVal" sAddr="1.1.282.0"/>
							<DAI name="q" sAddr="1.2.282.0"/>
							<DAI name="t" sAddr="1.3.282.0"/>
							<DAI name="dU">
								<Val>GPS对时信号异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm6" desc="网口9通信异常">
							<DAI name="stVal" sAddr="1.1.280.0"/>
							<DAI name="q" sAddr="1.2.280.0"/>
							<DAI name="t" sAddr="1.3.280.0"/>
							<DAI name="dU">
								<Val>网口9通信异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm7" desc="网口10通信异常">
							<DAI name="stVal" sAddr="1.1.281.0"/>
							<DAI name="q" sAddr="1.2.281.0"/>
							<DAI name="t" sAddr="1.3.281.0"/>
							<DAI name="dU">
								<Val>网口10通信异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm8" desc="goose配置错">
							<DAI name="stVal" sAddr="1.1.283.0"/>
							<DAI name="q" sAddr="1.2.283.0"/>
							<DAI name="t" sAddr="1.3.283.0"/>
							<DAI name="dU">
								<Val>goose配置错</Val>
							</DAI>
						</DOI>
						<DOI name="Alm9" desc="收到跳闸令">
							<DAI name="stVal" sAddr="1.1.284.0"/>
							<DAI name="q" sAddr="1.2.284.0"/>
							<DAI name="t" sAddr="1.3.284.0"/>
							<DAI name="dU">
								<Val>收到跳闸令</Val>
							</DAI>
						</DOI>
						<DOI name="Alm10" desc="网口1通信异常">
							<DAI name="stVal" sAddr="1.1.272.0"/>
							<DAI name="q" sAddr="1.2.272.0"/>
							<DAI name="t" sAddr="1.3.272.0"/>
							<DAI name="dU">
								<Val>网口1通信异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm11" desc="网口2通信异常">
							<DAI name="stVal" sAddr="1.1.273.0"/>
							<DAI name="q" sAddr="1.2.273.0"/>
							<DAI name="t" sAddr="1.3.273.0"/>
							<DAI name="dU">
								<Val>网口2通信异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm12" desc="网口3通信异常">
							<DAI name="stVal" sAddr="1.1.274.0"/>
							<DAI name="q" sAddr="1.2.274.0"/>
							<DAI name="t" sAddr="1.3.274.0"/>
							<DAI name="dU">
								<Val>网口3通信异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm13" desc="网口4通信异常">
							<DAI name="stVal" sAddr="1.1.275.0"/>
							<DAI name="q" sAddr="1.2.275.0"/>
							<DAI name="t" sAddr="1.3.275.0"/>
							<DAI name="dU">
								<Val>网口4通信异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm14" desc="网口5通信异常">
							<DAI name="stVal" sAddr="1.1.276.0"/>
							<DAI name="q" sAddr="1.2.276.0"/>
							<DAI name="t" sAddr="1.3.276.0"/>
							<DAI name="dU">
								<Val>网口5通信异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm15" desc="网口6通信异常">
							<DAI name="stVal" sAddr="1.1.277.0"/>
							<DAI name="q" sAddr="1.2.277.0"/>
							<DAI name="t" sAddr="1.3.277.0"/>
							<DAI name="dU">
								<Val>网口6通信异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm16" desc="网口7通信异常">
							<DAI name="stVal" sAddr="1.1.278.0"/>
							<DAI name="q" sAddr="1.2.278.0"/>
							<DAI name="t" sAddr="1.3.278.0"/>
							<DAI name="dU">
								<Val>网口7通信异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm17" desc="网口8通信异常">
							<DAI name="stVal" sAddr="1.1.279.0"/>
							<DAI name="q" sAddr="1.2.279.0"/>
							<DAI name="t" sAddr="1.3.279.0"/>
							<DAI name="dU">
								<Val>网口8通信异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm18" desc="I/O模件异常">
							<DAI name="stVal" sAddr="1.1.264.0"/>
							<DAI name="q" sAddr="1.2.264.0"/>
							<DAI name="t" sAddr="1.3.264.0"/>
							<DAI name="dU">
								<Val>I/O模件异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm19" desc="告警19">
							<DAI name="dU">
								<Val>告警19</Val>
							</DAI>
						</DOI>
						<DOI name="Alm20" desc="告警20">
							<DAI name="dU">
								<Val>告警20</Val>
							</DAI>
						</DOI>
						<DOI name="Alm21" desc="告警21">
							<DAI name="dU">
								<Val>告警21</Val>
							</DAI>
						</DOI>
						<DOI name="Alm22" desc="告警22">
							<DAI name="dU">
								<Val>告警22</Val>
							</DAI>
						</DOI>
						<DOI name="Alm23" desc="告警23">
							<DAI name="dU">
								<Val>告警23</Val>
							</DAI>
						</DOI>
						<DOI name="Alm24" desc="告警24">
							<DAI name="dU">
								<Val>告警24</Val>
							</DAI>
						</DOI>
						<DOI name="Alm25" desc="告警25">
							<DAI name="dU">
								<Val>告警25</Val>
							</DAI>
						</DOI>
						<DOI name="Alm26" desc="告警26">
							<DAI name="dU">
								<Val>告警26</Val>
							</DAI>
						</DOI>
						<DOI name="Alm27" desc="告警27">
							<DAI name="dU">
								<Val>告警27</Val>
							</DAI>
						</DOI>
						<DOI name="Alm28" desc="告警28">
							<DAI name="dU">
								<Val>告警28</Val>
							</DAI>
						</DOI>
						<DOI name="Alm29" desc="告警29">
							<DAI name="dU">
								<Val>告警29</Val>
							</DAI>
						</DOI>
						<DOI name="Alm30" desc="告警30">
							<DAI name="dU">
								<Val>告警30</Val>
							</DAI>
						</DOI>
						<DOI name="Alm31" desc="告警31">
							<DAI name="dU">
								<Val>告警31</Val>
							</DAI>
						</DOI>
						<DOI name="Alm32" desc="告警32">
							<DAI name="dU">
								<Val>告警32</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="CondMeas" lnClass="GGIO" lnType="1_GNR_RPIT_GGIO_AnIn10" inst="1" desc="温湿度测量">
						<DOI name="AnIn1" desc="环境温度">
							<SDI name="mag">
								<DAI name="f" sAddr="6.1.0.0"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>°C</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>0</Val>
								</DAI>
							</SDI>
							<SDI name="rangeC">
								<SDI name="min">
									<DAI name="f">
										<Val>-100</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="f">
										<Val>100</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="q" desc=""/>
							<DAI name="db">
								<Val>250</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>250</Val>
							</DAI>
							<DAI name="dU">
								<Val>环境温度</Val>
							</DAI>
						</DOI>
						<DOI name="AnIn2" desc="环境湿度">
							<SDI name="mag">
								<DAI name="f" sAddr="6.1.1.0"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>1</Val>
								</DAI>
								<DAI name="multiplier">
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
										<Val>100</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="q" desc=""/>
							<DAI name="db">
								<Val>500</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>500</Val>
							</DAI>
							<DAI name="dU">
								<Val>环境湿度</Val>
							</DAI>
						</DOI>
						<DOI name="AnIn3" desc="测量备用1">
							<SDI name="mag">
								<DAI name="f" sAddr="6.1.2.0"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>1</Val>
								</DAI>
								<DAI name="multiplier">
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
										<Val>100</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="q" desc=""/>
							<DAI name="db">
								<Val>500</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>500</Val>
							</DAI>
							<DAI name="dU">
								<Val>测量备用1</Val>
							</DAI>
						</DOI>
						<DOI name="AnIn4" desc="测量备用2">
							<SDI name="mag">
								<DAI name="f" sAddr="6.1.3.0"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>1</Val>
								</DAI>
								<DAI name="multiplier">
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
										<Val>100</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="q" desc=""/>
							<DAI name="db">
								<Val>500</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>500</Val>
							</DAI>
							<DAI name="dU">
								<Val>测量备用2</Val>
							</DAI>
						</DOI>
						<DOI name="AnIn5" desc="测量备用3">
							<SDI name="mag">
								<DAI name="f" sAddr="6.1.4.0"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>1</Val>
								</DAI>
								<DAI name="multiplier">
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
										<Val>100</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="q" desc=""/>
							<DAI name="db">
								<Val>500</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>500</Val>
							</DAI>
							<DAI name="dU">
								<Val>测量备用3</Val>
							</DAI>
						</DOI>
						<DOI name="AnIn6" desc="测量备用4">
							<SDI name="mag">
								<DAI name="f" sAddr="6.1.5.0"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>1</Val>
								</DAI>
								<DAI name="multiplier">
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
										<Val>100</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="q" desc=""/>
							<DAI name="db">
								<Val>500</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>500</Val>
							</DAI>
							<DAI name="dU">
								<Val>测量备用4</Val>
							</DAI>
						</DOI>
						<DOI name="AnIn7" desc="测量备用5">
							<SDI name="mag">
								<DAI name="f" sAddr="6.1.6.0"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>1</Val>
								</DAI>
								<DAI name="multiplier">
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
										<Val>100</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="q" desc=""/>
							<DAI name="db">
								<Val>500</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>500</Val>
							</DAI>
							<DAI name="dU">
								<Val>测量备用5</Val>
							</DAI>
						</DOI>
						<DOI name="AnIn8" desc="测量备用6">
							<SDI name="mag">
								<DAI name="f" sAddr="6.1.7.0"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>1</Val>
								</DAI>
								<DAI name="multiplier">
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
										<Val>100</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="q" desc=""/>
							<DAI name="db">
								<Val>500</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>500</Val>
							</DAI>
							<DAI name="dU">
								<Val>测量备用6</Val>
							</DAI>
						</DOI>
						<DOI name="AnIn9" desc="测量备用7">
							<SDI name="mag">
								<DAI name="f" sAddr="6.1.8.0"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>1</Val>
								</DAI>
								<DAI name="multiplier">
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
										<Val>100</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="q" desc=""/>
							<DAI name="db">
								<Val>500</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>500</Val>
							</DAI>
							<DAI name="dU">
								<Val>测量备用7</Val>
							</DAI>
						</DOI>
						<DOI name="AnIn10" desc="测量备用8">
							<SDI name="mag">
								<DAI name="f" sAddr="6.1.9.0"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>1</Val>
								</DAI>
								<DAI name="multiplier">
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
										<Val>100</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="q" desc=""/>
							<DAI name="db">
								<Val>500</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>500</Val>
							</DAI>
							<DAI name="dU">
								<Val>测量备用8</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOIN" lnClass="GGIO" lnType="1_GNR_RPIT_GGIO_Inputs_SP32" inst="1" desc="保护GOOSE输入虚端子1">
						<DOI name="SPCSO1" desc="A跳1">
							<DAI name="stVal" sAddr="133.1.0.0"/>
							<DAI name="dU">
								<Val>A跳1</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO2" desc="A跳2">
							<DAI name="stVal" sAddr="133.1.1.0"/>
							<DAI name="dU">
								<Val>A跳2</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO3" desc="A跳3">
							<DAI name="stVal" sAddr="133.1.2.0"/>
							<DAI name="dU">
								<Val>A跳3</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO4" desc="A跳4">
							<DAI name="stVal" sAddr="133.1.3.0"/>
							<DAI name="dU">
								<Val>A跳4</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO5" desc="B跳1">
							<DAI name="stVal" sAddr="133.1.16.0"/>
							<DAI name="dU">
								<Val>B跳1</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO6" desc="B跳2">
							<DAI name="stVal" sAddr="133.1.17.0"/>
							<DAI name="dU">
								<Val>B跳2</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO7" desc="B跳3">
							<DAI name="stVal" sAddr="133.1.18.0"/>
							<DAI name="dU">
								<Val>B跳3</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO8" desc="B跳4">
							<DAI name="stVal" sAddr="133.1.19.0"/>
							<DAI name="dU">
								<Val>B跳4</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO9" desc="C跳1">
							<DAI name="stVal" sAddr="133.1.32.0"/>
							<DAI name="dU">
								<Val>C跳1</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO10" desc="C跳2">
							<DAI name="stVal" sAddr="133.1.33.0"/>
							<DAI name="dU">
								<Val>C跳2</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO11" desc="C跳3">
							<DAI name="stVal" sAddr="133.1.34.0"/>
							<DAI name="dU">
								<Val>C跳3</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO12" desc="C跳4">
							<DAI name="stVal" sAddr="133.1.35.0"/>
							<DAI name="dU">
								<Val>C跳4</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO13" desc="闭重1">
							<DAI name="stVal" sAddr="133.1.48.0"/>
							<DAI name="dU">
								<Val>闭重1</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO14" desc="闭重2">
							<DAI name="stVal" sAddr="133.1.49.0"/>
							<DAI name="dU">
								<Val>闭重2</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO15" desc="闭重3">
							<DAI name="stVal" sAddr="133.1.50.0"/>
							<DAI name="dU">
								<Val>闭重3</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO16" desc="闭重4">
							<DAI name="stVal" sAddr="133.1.51.0"/>
							<DAI name="dU">
								<Val>闭重4</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO17" desc="闭重5">
							<DAI name="stVal" sAddr="133.1.52.0"/>
							<DAI name="dU">
								<Val>闭重5</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO18" desc="启重三跳1">
							<DAI name="stVal" sAddr="133.1.64.0"/>
							<DAI name="dU">
								<Val>启重三跳1</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO19" desc="启重三跳2">
							<DAI name="stVal" sAddr="133.1.65.0"/>
							<DAI name="dU">
								<Val>启重三跳2</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO20" desc="闭重启失灵三跳1">
							<DAI name="stVal" sAddr="133.1.80.0"/>
							<DAI name="dU">
								<Val>闭重启失灵三跳1</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO21" desc="闭重启失灵三跳2">
							<DAI name="stVal" sAddr="133.1.81.0"/>
							<DAI name="dU">
								<Val>闭重启失灵三跳2</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO22" desc="闭重启失灵三跳3">
							<DAI name="stVal" sAddr="133.1.82.0"/>
							<DAI name="dU">
								<Val>闭重启失灵三跳3</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO23" desc="闭重启失灵三跳4">
							<DAI name="stVal" sAddr="133.1.83.0"/>
							<DAI name="dU">
								<Val>闭重启失灵三跳4</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO24" desc="闭重启失灵三跳5">
							<DAI name="stVal" sAddr="133.1.84.0"/>
							<DAI name="dU">
								<Val>闭重启失灵三跳5</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO25" desc="闭重启失灵三跳6">
							<DAI name="stVal" sAddr="133.1.85.0"/>
							<DAI name="dU">
								<Val>闭重启失灵三跳6</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO26" desc="闭重闭失灵三跳1">
							<DAI name="stVal" sAddr="133.1.96.0"/>
							<DAI name="dU">
								<Val>闭重闭失灵三跳1</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO27" desc="闭重闭失灵三跳2">
							<DAI name="stVal" sAddr="133.1.97.0"/>
							<DAI name="dU">
								<Val>闭重闭失灵三跳2</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO28" desc="闭重闭失灵三跳3">
							<DAI name="stVal" sAddr="133.1.98.0"/>
							<DAI name="dU">
								<Val>闭重闭失灵三跳3</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO29" desc="闭重闭失灵三跳4">
							<DAI name="stVal" sAddr="133.1.99.0"/>
							<DAI name="dU">
								<Val>闭重闭失灵三跳4</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO30" desc="合A1">
							<DAI name="stVal" sAddr="133.1.112.0"/>
							<DAI name="dU">
								<Val>合A1</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO31" desc="合B1">
							<DAI name="stVal" sAddr="133.1.128.0"/>
							<DAI name="dU">
								<Val>合B1</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO32" desc="合C1">
							<DAI name="stVal" sAddr="133.1.144.0"/>
							<DAI name="dU">
								<Val>合C1</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOIN" lnClass="GGIO" lnType="1_GNR_RPIT_GGIO_Inputs_SP32" inst="2" desc="测控GOOSE输入虚端子1">
						<DOI name="SPCSO1" desc="断路器控分">
							<DAI name="stVal" sAddr="133.1.256.0"/>
							<DAI name="dU">
								<Val>断路器控分</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO2" desc="断路器控合">
							<DAI name="stVal" sAddr="133.1.257.0"/>
							<DAI name="dU">
								<Val>断路器控合</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO3" desc="断路器闭锁">
							<DAI name="stVal" sAddr="133.1.304.0"/>
							<DAI name="dU">
								<Val>断路器闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO4" desc="闸刀1控分">
							<DAI name="stVal" sAddr="133.1.258.0"/>
							<DAI name="dU">
								<Val>闸刀1控分</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO5" desc="闸刀1控合">
							<DAI name="stVal" sAddr="133.1.259.0"/>
							<DAI name="dU">
								<Val>闸刀1控合</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO6" desc="闸刀1闭锁">
							<DAI name="stVal" sAddr="133.1.306.0"/>
							<DAI name="dU">
								<Val>闸刀1闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO7" desc="闸刀2控分">
							<DAI name="stVal" sAddr="133.1.260.0"/>
							<DAI name="dU">
								<Val>闸刀2控分</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO8" desc="闸刀2控合">
							<DAI name="stVal" sAddr="133.1.261.0"/>
							<DAI name="dU">
								<Val>闸刀2控合</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO9" desc="闸刀2闭锁">
							<DAI name="stVal" sAddr="133.1.308.0"/>
							<DAI name="dU">
								<Val>闸刀2闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO10" desc="闸刀3控分">
							<DAI name="stVal" sAddr="133.1.262.0"/>
							<DAI name="dU">
								<Val>闸刀3控分</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO11" desc="闸刀3控合">
							<DAI name="stVal" sAddr="133.1.263.0"/>
							<DAI name="dU">
								<Val>闸刀3控合</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO12" desc="闸刀3闭锁">
							<DAI name="stVal" sAddr="133.1.310.0"/>
							<DAI name="dU">
								<Val>闸刀3闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO13" desc="闸刀4控分">
							<DAI name="stVal" sAddr="133.1.264.0"/>
							<DAI name="dU">
								<Val>闸刀4控分</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO14" desc="闸刀4控合">
							<DAI name="stVal" sAddr="133.1.265.0"/>
							<DAI name="dU">
								<Val>闸刀4控合</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO15" desc="闸刀4闭锁">
							<DAI name="stVal" sAddr="133.1.312.0"/>
							<DAI name="dU">
								<Val>闸刀4闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO16" desc="接地闸刀1控分">
							<DAI name="stVal" sAddr="133.1.266.0"/>
							<DAI name="dU">
								<Val>接地闸刀1控分</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO17" desc="接地闸刀1控合">
							<DAI name="stVal" sAddr="133.1.267.0"/>
							<DAI name="dU">
								<Val>接地闸刀1控合</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO18" desc="接地闸刀1闭锁">
							<DAI name="stVal" sAddr="133.1.314.0"/>
							<DAI name="dU">
								<Val>接地闸刀1闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO19" desc="接地闸刀2控分">
							<DAI name="stVal" sAddr="133.1.268.0"/>
							<DAI name="dU">
								<Val>接地闸刀2控分</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO20" desc="接地闸刀2控合">
							<DAI name="stVal" sAddr="133.1.269.0"/>
							<DAI name="dU">
								<Val>接地闸刀2控合</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO21" desc="接地闸刀2闭锁">
							<DAI name="stVal" sAddr="133.1.316.0"/>
							<DAI name="dU">
								<Val>接地闸刀2闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO22" desc="接地闸刀3控分">
							<DAI name="stVal" sAddr="133.1.270.0"/>
							<DAI name="dU">
								<Val>接地闸刀3控分</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO23" desc="接地闸刀3控合">
							<DAI name="stVal" sAddr="133.1.271.0"/>
							<DAI name="dU">
								<Val>接地闸刀3控合</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO24" desc="接地闸刀3闭锁">
							<DAI name="stVal" sAddr="133.1.318.0"/>
							<DAI name="dU">
								<Val>接地闸刀3闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO25" desc="备用1控分">
							<DAI name="stVal" sAddr="133.1.272.0"/>
							<DAI name="dU">
								<Val>备用1控分</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO26" desc="备用1控合">
							<DAI name="stVal" sAddr="133.1.273.0"/>
							<DAI name="dU">
								<Val>备用1控合</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO27" desc="备用1闭锁">
							<DAI name="stVal" sAddr="133.1.320.0"/>
							<DAI name="dU">
								<Val>备用1闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO28" desc="备用2控分">
							<DAI name="stVal" sAddr="133.1.274.0"/>
							<DAI name="dU">
								<Val>备用2控分</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO29" desc="备用2控合">
							<DAI name="stVal" sAddr="133.1.275.0"/>
							<DAI name="dU">
								<Val>备用2控合</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO30" desc="备用2闭锁">
							<DAI name="stVal" sAddr="133.1.322.0"/>
							<DAI name="dU">
								<Val>备用2闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO31" desc="备用3控分">
							<DAI name="stVal" sAddr="133.1.276.0"/>
							<DAI name="dU">
								<Val>备用3控分</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO32" desc="备用3控合">
							<DAI name="stVal" sAddr="133.1.277.0"/>
							<DAI name="dU">
								<Val>备用3控合</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOIN" lnClass="GGIO" lnType="1_GNR_RPIT_GGIO_Inputs_SP32" inst="3" desc="测控GOOSE输入虚端子2">
						<DOI name="SPCSO1" desc="备用3闭锁">
							<DAI name="stVal" sAddr="133.1.324.0"/>
							<DAI name="dU">
								<Val>备用3闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO2" desc="备用4控分">
							<DAI name="stVal" sAddr="133.1.278.0"/>
							<DAI name="dU">
								<Val>备用4控分</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO3" desc="备用4控合">
							<DAI name="stVal" sAddr="133.1.279.0"/>
							<DAI name="dU">
								<Val>备用4控合</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO4" desc="备用4闭锁">
							<DAI name="stVal" sAddr="133.1.326.0"/>
							<DAI name="dU">
								<Val>备用4闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO5" desc="备用5控分">
							<DAI name="stVal" sAddr="133.1.280.0"/>
							<DAI name="dU">
								<Val>备用5控分</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO6" desc="备用5控合">
							<DAI name="stVal" sAddr="133.1.281.0"/>
							<DAI name="dU">
								<Val>备用5控合</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO7" desc="备用5闭锁">
							<DAI name="stVal" sAddr="133.1.328.0"/>
							<DAI name="dU">
								<Val>备用5闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO8" desc="备用控制1">
							<DAI name="stVal" sAddr="133.1.288.0"/>
							<DAI name="dU">
								<Val>备用控制1</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO9" desc="备用控制2">
							<DAI name="stVal" sAddr="133.1.289.0"/>
							<DAI name="dU">
								<Val>备用控制1</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO10" desc="备用控制3">
							<DAI name="stVal" sAddr="133.1.290.0"/>
							<DAI name="dU">
								<Val>备用控制2</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO11" desc="备用控制4">
							<DAI name="stVal" sAddr="133.1.291.0"/>
							<DAI name="dU">
								<Val>备用控制3</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO12" desc="备用控制5">
							<DAI name="stVal" sAddr="133.1.292.0"/>
							<DAI name="dU">
								<Val>备用控制4</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO13" desc="备用控制6">
							<DAI name="stVal" sAddr="133.1.293.0"/>
							<DAI name="dU">
								<Val>备用控制5</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO14" desc="备用控制7">
							<DAI name="stVal" sAddr="133.1.294.0"/>
							<DAI name="dU">
								<Val>备用控制6</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO15" desc="备用控制8">
							<DAI name="stVal" sAddr="133.1.295.0"/>
							<DAI name="dU">
								<Val>备用控制7</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO16" desc="备用控制9">
							<DAI name="stVal" sAddr="133.1.296.0"/>
							<DAI name="dU">
								<Val>备用控制8</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO17" desc="备用控制10">
							<DAI name="stVal" sAddr="133.1.297.0"/>
							<DAI name="dU">
								<Val>备用控制9</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO18" desc="备用控制11">
							<DAI name="stVal" sAddr="133.1.298.0"/>
							<DAI name="dU">
								<Val>备用控制10</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO19" desc="远方复归">
							<DAI name="stVal" sAddr="133.1.299.0"/>
							<DAI name="dU">
								<Val>远方复归</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO20" desc="备用控制12">
							<DAI name="stVal" sAddr="133.1.300.0"/>
							<DAI name="dU">
								<Val>备用控制12</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO21">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="SPCSO22">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="SPCSO23">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="SPCSO24">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="SPCSO25">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="SPCSO26">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="SPCSO27">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="SPCSO28">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="SPCSO29">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="SPCSO30">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="SPCSO31">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
						<DOI name="SPCSO32">
							<DAI name="dU">
								<Val/>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="BY1" lnClass="XSWI" lnType="1_GNR_RPIT_XSWI" inst="1" desc="备用遥控1">
						<DOI name="Pos" desc="备用1位置">
							<DAI name="stVal" sAddr="2.1.11.0"/>
							<DAI name="q" sAddr="2.2.11.0"/>
							<DAI name="t" sAddr="2.3.11.0"/>
							<DAI name="dU">
								<Val>备用1位置</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="BY2" lnClass="XSWI" lnType="1_GNR_RPIT_XSWI" inst="2" desc="备用遥控2">
						<DOI name="Pos" desc="备用2位置">
							<DAI name="stVal" sAddr="2.1.12.0"/>
							<DAI name="q" sAddr="2.2.12.0"/>
							<DAI name="t" sAddr="2.3.12.0"/>
							<DAI name="dU">
								<Val>备用2位置</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="BY3" lnClass="XSWI" lnType="1_GNR_RPIT_XSWI" inst="3" desc="备用遥控3">
						<DOI name="Pos" desc="备用3位置">
							<DAI name="stVal" sAddr="2.1.13.0"/>
							<DAI name="q" sAddr="2.2.13.0"/>
							<DAI name="t" sAddr="2.3.13.0"/>
							<DAI name="dU">
								<Val>备用3位置</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="BY4" lnClass="XSWI" lnType="1_GNR_RPIT_XSWI" inst="4" desc="备用遥控4">
						<DOI name="Pos" desc="备用4位置">
							<DAI name="stVal" sAddr="2.1.14.0"/>
							<DAI name="q" sAddr="2.2.14.0"/>
							<DAI name="t" sAddr="2.3.14.0"/>
							<DAI name="dU">
								<Val>备用4位置</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="BY5" lnClass="XSWI" lnType="1_GNR_RPIT_XSWI" inst="5" desc="备用遥控5">
						<DOI name="Pos" desc="备用5位置">
							<DAI name="stVal" sAddr="2.1.15.0"/>
							<DAI name="q" sAddr="2.2.15.0"/>
							<DAI name="t" sAddr="2.3.15.0"/>
							<DAI name="dU">
								<Val>备用5位置</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOIN" lnClass="GGIO" lnType="1_GNR_RPIT_GGIO_Inputs_SP32" inst="4" desc="保护GOOSE输入虚端子2">
						<DOI name="SPCSO1" desc="重合1">
							<DAI name="stVal" sAddr="133.1.160.0"/>
							<DAI name="dU">
								<Val>重合1</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO2" desc="重合2">
							<DAI name="stVal" sAddr="133.1.161.0"/>
							<DAI name="dU">
								<Val>重合2</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO3" desc="重合3">
							<DAI name="stVal" sAddr="133.1.162.0"/>
							<DAI name="dU">
								<Val>重合3</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO4" desc="重合4">
							<DAI name="stVal" sAddr="133.1.163.0"/>
							<DAI name="dU">
								<Val>重合4</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO5" desc="合A2">
							<DAI name="stVal" sAddr="133.1.113.0"/>
							<DAI name="dU">
								<Val>合A2</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO6" desc="合B2">
							<DAI name="stVal" sAddr="133.1.129.0"/>
							<DAI name="dU">
								<Val>合B2</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO7" desc="合C2">
							<DAI name="stVal" sAddr="133.1.145.0"/>
							<DAI name="dU">
								<Val>合C2</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO8" desc="合A3">
							<DAI name="stVal" sAddr="133.1.114.0"/>
							<DAI name="dU">
								<Val>合A3</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO9" desc="合B3">
							<DAI name="stVal" sAddr="133.1.130.0"/>
							<DAI name="dU">
								<Val>合B3</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO10" desc="合C3">
							<DAI name="stVal" sAddr="133.1.146.0"/>
							<DAI name="dU">
								<Val>合C3</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO11" desc="合A4">
							<DAI name="stVal" sAddr="133.1.115.0"/>
							<DAI name="dU">
								<Val>合A4</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO12" desc="合B4">
							<DAI name="stVal" sAddr="133.1.131.0"/>
							<DAI name="dU">
								<Val>合B4</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO13" desc="合C4">
							<DAI name="stVal" sAddr="133.1.147.0"/>
							<DAI name="dU">
								<Val>合C4</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
			</Server>
		</AccessPoint>
	</IED>
	<IED name="NS3642" type="NSR-3641A-DA-G" desc="NSR-3641A-DA-G备用电源自投装置" manufacturer="GDNR" configVersion="V1.00">
		<Private type="IED virtual terminal conection CRC">F2596F5F</Private>
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
			<ConfDataSet max="23" maxAttributes="255"/>
			<ReadWrite/>
			<ConfReportControl max="16"/>
			<GetCBValues/>
			<ConfLogControl max="10"/>
			<ReportSettings cbName="Conf" datSet="Conf" rptID="Dyn" optFields="Dyn" bufTime="Fix" trgOps="Dyn" intgPd="Dyn"/>
			<LogSettings cbName="Conf" datSet="Conf" intgPd="Dyn"/>
			<GOOSE max="16"/>
			<FileHandling/>
			<ConfLNs fixPrefix="true" fixLnInst="true"/>
		</Services>
		<AccessPoint name="S1" router="false" clock="false">
			<Server timeout="30">
				<Authentication none="true" password="false" weak="false" strong="false" certificate="false"/>
				<LDevice inst="PROT" desc="保护">
					<LN0 lnClass="LLN0" lnType="2_GDNR_V6_LLN0_NSR-3641A-DA-G" inst="" desc="逻辑0">
						<DataSet name="dsParameter" desc="设备参数定值">
							<FCDA ldInst="PROT" lnClass="LLN0" doName="SettingGrp" fc="SP"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="DeviceName" fc="SP"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="IEDParam1" fc="SP"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="IEDParam2" fc="SP"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="IEDParam3" fc="SP"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="IEDParam4" fc="SP"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="IEDParam5" fc="SP"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="IEDParam6" fc="SP"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="IEDParam7" fc="SP"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="IEDParam8" fc="SP"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="IEDParam9" fc="SP"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="IEDParam10" fc="SP"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="IEDParam11" fc="SP"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="IEDParam12" fc="SP"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="IEDParam13" fc="SP"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="IEDParam14" fc="SP"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="IEDParam15" fc="SP"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="IEDParam16" fc="SP"/>
						</DataSet>
						<DataSet name="dsRelayDin" desc="保护遥信数据集">
							<FCDA ldInst="PROT" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="LEDRs" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="1" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="1" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="1" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="1" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="1" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="2" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="2" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="2" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="2" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="2" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="2" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="2" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="2" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="3" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="3" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="3" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="3" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="3" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="3" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="3" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="3" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="4" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="4" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="4" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="4" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="4" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="4" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="4" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="4" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="5" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="5" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="5" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="5" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="5" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="5" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="5" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="5" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="6" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="6" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="6" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="6" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="7" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="7" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="7" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="7" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="8" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="8" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="8" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="8" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="8" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="8" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="8" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="8" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="9" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="9" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="9" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="9" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="9" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="9" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="9" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="9" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="10" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="10" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="10" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="10" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="6" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="6" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="6" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="6" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="7" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="7" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="7" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="7" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind5" fc="ST"/>
						</DataSet>
						<DataSet name="dsRelayAin" desc="模拟量">
							<FCDA ldInst="PROT" lnClass="MMXN" lnInst="1" doName="Amp" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXN" lnInst="1" doName="Vol" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="PhV.phsA" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="PhV.phsB" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="PhV.phsC" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXN" lnInst="3" doName="Amp" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXN" lnInst="2" doName="Amp" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXN" lnInst="2" doName="Vol" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="2" doName="PhV.phsA" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="2" doName="PhV.phsB" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="2" doName="PhV.phsC" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXN" lnInst="4" doName="Amp" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="A.phsA" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="A.phsB" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="A.phsC" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="PPV.phsAB" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="PPV.phsBC" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="PPV.phsCA" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MSQI" lnInst="2" doName="SeqV.c1" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MSQI" lnInst="1" doName="SeqV.c1" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="2" doName="PPV.phsAB" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="2" doName="PPV.phsBC" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="2" doName="PPV.phsCA" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MSQI" lnInst="2" doName="SeqV.c2" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MSQI" lnInst="1" doName="SeqV.c2" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="MMXU" lnInst="1" doName="A.neut" fc="MX"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="CurSettingGrp" fc="MX"/>
						</DataSet>
						<DataSet name="dsTripInfo" desc="保护事件数据集">
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op1" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op2" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op3" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op4" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op5" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op6" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op7" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op8" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="4" doName="Op" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="6" doName="Op" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="3" doName="Op1" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="3" doName="Op2" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op9" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op10" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op11" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op12" fc="ST"/>
						</DataSet>
						<DataSet name="dsSetting" desc="保护定值数据集">
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="1" doName="LivBusVal" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="1" doName="DeaVal" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="1" doName="LivLinVal" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="1" doName="DeaAVal1" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="1" doName="DeaAVal2" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="1" doName="OpTmms" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="1" doName="OpTmms1" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="1" doName="OpTmms2" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="1" doName="OpTmms3" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="1" doName="OpTmms4" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="4" doName="StrVal" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="4" doName="StrValUL" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="4" doName="StrValU2" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="4" doName="OpDlTmms" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="6" doName="StrVal" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="6" doName="OpDlTmms" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="3" doName="StrVal" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="3" doName="StrVal1" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="3" doName="OpTmms" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="3" doName="OpTmms1" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="2" doName="Enable" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="2" doName="Enable1" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="2" doName="Enable2" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="2" doName="Enable3" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="1" doName="Enable1" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="1" doName="Enable2" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="4" doName="Enable" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="4" doName="VolBlkEna" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="6" doName="Enable" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="3" doName="Enable" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="3" doName="Enable1" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="2" doName="Enable4" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="3" doName="Enable2" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="3" doName="Enable3" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="1" doName="Enable3" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="2" doName="TZ1OUT" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="2" doName="TZ1OUT1" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="3" doName="Trp1Out" fc="SG"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="3" doName="Trp2Out" fc="SG"/>
						</DataSet>
						<DataSet name="dsRelayEna" desc="保护压板数据集">
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna1" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna2" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna3" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna4" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna5" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna6" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna7" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna8" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna9" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna10" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="RemStrpEna" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="RemGrpEna" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="RemSetEna" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="1" doName="SPCSO1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="1" doName="SPCSO2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="1" doName="SPCSO3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="1" doName="SPCSO4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="1" doName="SPCSO5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="1" doName="SPCSO6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="1" doName="SPCSO7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="1" doName="SPCSO8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="2" doName="SPCSO1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="2" doName="SPCSO2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="2" doName="SPCSO3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="2" doName="SPCSO4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="2" doName="SPCSO5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="2" doName="SPCSO6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="2" doName="SPCSO7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="2" doName="SPCSO8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="3" doName="SPCSO1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="3" doName="SPCSO2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="3" doName="SPCSO3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="3" doName="SPCSO4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="3" doName="SPCSO5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="3" doName="SPCSO6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="3" doName="SPCSO7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="3" doName="SPCSO8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="4" doName="SPCSO1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="4" doName="SPCSO2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="SvSwi" lnClass="GGIO" lnInst="1" doName="SPCSO1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="SvSwi" lnClass="GGIO" lnInst="1" doName="SPCSO2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="SvSwi" lnClass="GGIO" lnInst="1" doName="SPCSO3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="SvSwi" lnClass="GGIO" lnInst="1" doName="SPCSO4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="SvSwi" lnClass="GGIO" lnInst="1" doName="SPCSO5" fc="ST"/>
						</DataSet>
						<DataSet name="dsLog" desc="日志记录数据集">
							<FCDA ldInst="PROT" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="BI" lnClass="GGIO" lnInst="1" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="LEDRs" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="1" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="1" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="1" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="1" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="1" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="2" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="2" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="2" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="2" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="2" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="2" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="2" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="2" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="3" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="3" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="3" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="3" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="3" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="3" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="3" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="3" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="4" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="4" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="4" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="4" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="4" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="4" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="4" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="4" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="5" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="5" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="5" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="5" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="5" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="5" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="5" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="5" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="6" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="6" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="6" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="6" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="7" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="7" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="7" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="7" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="8" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="8" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="8" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="8" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="8" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="8" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="8" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="8" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="9" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="9" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="9" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="9" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="9" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="9" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="9" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="9" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="10" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="10" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="10" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="10" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="6" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="6" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="6" doName="Ind7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="6" doName="Ind8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="7" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="7" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="7" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GO" lnClass="GGIO" lnInst="7" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="Q0" lnClass="GGIO" lnInst="1" doName="Ind5" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op1" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op2" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op3" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op4" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op5" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op6" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op7" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op8" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="4" doName="Op" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="PTOC" lnInst="6" doName="Op" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="3" doName="Op1" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="3" doName="Op2" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op9" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op10" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op11" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="GAPC" lnInst="6" doName="Op12" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna1" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna2" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna3" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna4" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna5" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna6" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna7" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna8" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna9" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="FuncEna10" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="RemStrpEna" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="RemGrpEna" fc="ST"/>
							<FCDA ldInst="PROT" lnClass="LLN0" doName="RemSetEna" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="1" doName="SPCSO1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="1" doName="SPCSO2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="1" doName="SPCSO3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="1" doName="SPCSO4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="1" doName="SPCSO5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="1" doName="SPCSO6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="1" doName="SPCSO7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="1" doName="SPCSO8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="2" doName="SPCSO1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="2" doName="SPCSO2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="2" doName="SPCSO3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="2" doName="SPCSO4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="2" doName="SPCSO5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="2" doName="SPCSO6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="2" doName="SPCSO7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="2" doName="SPCSO8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="3" doName="SPCSO1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="3" doName="SPCSO2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="3" doName="SPCSO3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="3" doName="SPCSO4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="3" doName="SPCSO5" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="3" doName="SPCSO6" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="3" doName="SPCSO7" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="3" doName="SPCSO8" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="4" doName="SPCSO1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="GsSwi" lnClass="GGIO" lnInst="4" doName="SPCSO2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="SvSwi" lnClass="GGIO" lnInst="1" doName="SPCSO1" fc="ST"/>
							<FCDA ldInst="PROT" prefix="SvSwi" lnClass="GGIO" lnInst="1" doName="SPCSO2" fc="ST"/>
							<FCDA ldInst="PROT" prefix="SvSwi" lnClass="GGIO" lnInst="1" doName="SPCSO3" fc="ST"/>
							<FCDA ldInst="PROT" prefix="SvSwi" lnClass="GGIO" lnInst="1" doName="SPCSO4" fc="ST"/>
							<FCDA ldInst="PROT" prefix="SvSwi" lnClass="GGIO" lnInst="1" doName="SPCSO5" fc="ST"/>
						</DataSet>
						<ReportControl name="brcbRelayDin" datSet="dsRelayDin" intgPd="300000" rptID="" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="false" dupd="false" period="true"/>
							<OptFields seqNum="false" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="urcbRelayAin" datSet="dsRelayAin" intgPd="1800000" rptID="" confRev="1" buffered="false" bufTime="0">
							<TrgOps dchg="true" period="true"/>
							<OptFields seqNum="true" timeStamp="false" dataSet="false" reasonCode="false" dataRef="false" entryID="false" configRef="false"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="brcbTripInfo" datSet="dsTripInfo" intgPd="300000" rptID="" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="false" dupd="false" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="brcbRelayEna" datSet="dsRelayEna" intgPd="300000" rptID="" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="false" dupd="false" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true"/>
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>逻辑节点铭牌</Val>
							</DAI>
							<DAI name="configRev">
								<Val>V1.22</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2003</Val>
							</DAI>
						</DOI>
						<DOI name="LEDRs" desc="远方信号复归">
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B01.iec61850.signal_rst"/>
							</SDI>
							<DAI name="stVal" sAddr="B01.iec61850.signal_rst"/>
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
							<DAI name="dU" sAddr="B01.iec61850.signal_rst">
								<Val>远方信号复归</Val>
							</DAI>
						</DOI>
						<DOI name="SettingGrp" desc="定值区号">
							<DAI name="setVal" sAddr="B01.iec61850.current_setting_group"/>
							<DAI name="minVal" sAddr="B01.iec61850.current_setting_group">
								<Val>0</Val>
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
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="DeviceName" desc="被保护设备">
							<DAI name="setVal" sAddr="B02.CNST_GeneralSetting.sDevName"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sDevName">
								<Val>被保护设备</Val>
							</DAI>
							<DAI name="cdcNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="IEDParam1" desc="母线PT一次值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_AD.BusU1st"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_AD.BusU1st"/>
								<DAI name="multiplier" sAddr="B02.CNST_AD.BusU1st"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_AD.BusU1st"/>
								<DAI name="offset" sAddr="B02.CNST_AD.BusU1st"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_AD.BusU1st">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_AD.BusU1st">
									<Val>600</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_AD.BusU1st">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_AD.BusU1st">
								<Val>母线PT一次值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_AD.BusU1st">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="IEDParam2" desc="母线PT二次值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_AD.BusU2nd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_AD.BusU2nd">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_AD.BusU2nd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_AD.BusU2nd"/>
								<DAI name="offset" sAddr="B02.CNST_AD.BusU2nd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_AD.BusU2nd">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_AD.BusU2nd">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_AD.BusU2nd">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_AD.BusU2nd">
								<Val>母线PT二次值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_AD.BusU2nd">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="IEDParam3" desc="电源1PT一次值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_AD.UL11st"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_AD.UL11st"/>
								<DAI name="multiplier" sAddr="B02.CNST_AD.UL11st"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_AD.UL11st"/>
								<DAI name="offset" sAddr="B02.CNST_AD.UL11st"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_AD.UL11st">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_AD.UL11st">
									<Val>600</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_AD.UL11st">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_AD.UL11st">
								<Val>电源1PT一次值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_AD.UL11st">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="IEDParam4" desc="电源1PT二次值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_AD.UL12nd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_AD.UL12nd">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_AD.UL12nd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_AD.UL12nd"/>
								<DAI name="offset" sAddr="B02.CNST_AD.UL12nd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_AD.UL12nd">
									<Val>57</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_AD.UL12nd">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_AD.UL12nd">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_AD.UL12nd">
								<Val>电源1PT二次值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_AD.UL12nd">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="IEDParam5" desc="电源2PT一次值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_AD.UL21st"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_AD.UL21st"/>
								<DAI name="multiplier" sAddr="B02.CNST_AD.UL21st"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_AD.UL21st"/>
								<DAI name="offset" sAddr="B02.CNST_AD.UL21st"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_AD.UL21st">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_AD.UL21st">
									<Val>600</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_AD.UL21st">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_AD.UL21st">
								<Val>电源2PT一次值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_AD.UL21st">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="IEDParam6" desc="电源2PT二次值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_AD.UL22nd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_AD.UL22nd">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_AD.UL22nd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_AD.UL22nd"/>
								<DAI name="offset" sAddr="B02.CNST_AD.UL22nd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_AD.UL22nd">
									<Val>57</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_AD.UL22nd">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_AD.UL22nd">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_AD.UL22nd">
								<Val>电源2PT二次值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_AD.UL22nd">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="IEDParam7" desc="电源1CT一次值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_AD.IL11st"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_AD.IL11st">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_AD.IL11st"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_AD.IL11st"/>
								<DAI name="offset" sAddr="B02.CNST_AD.IL11st"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_AD.IL11st">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_AD.IL11st">
									<Val>9999</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_AD.IL11st">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_AD.IL11st">
								<Val>电源1CT一次值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_AD.IL11st">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="IEDParam8" desc="电源1CT二次值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_AD.IL12nd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_AD.IL12nd">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_AD.IL12nd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_AD.IL12nd"/>
								<DAI name="offset" sAddr="B02.CNST_AD.IL12nd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_AD.IL12nd">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_AD.IL12nd">
									<Val>5</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_AD.IL12nd">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_AD.IL12nd">
								<Val>电源1CT二次值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_AD.IL12nd">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="IEDParam9" desc="电源2CT一次值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_AD.IL21st"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_AD.IL21st">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_AD.IL21st"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_AD.IL21st"/>
								<DAI name="offset" sAddr="B02.CNST_AD.IL21st"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_AD.IL21st">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_AD.IL21st">
									<Val>9999</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_AD.IL21st">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_AD.IL21st">
								<Val>电源2CT一次值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_AD.IL21st">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="IEDParam10" desc="电源2CT二次值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_AD.IL22nd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_AD.IL22nd">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_AD.IL22nd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_AD.IL22nd"/>
								<DAI name="offset" sAddr="B02.CNST_AD.IL22nd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_AD.IL22nd">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_AD.IL22nd">
									<Val>5</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_AD.IL22nd">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_AD.IL22nd">
								<Val>电源2CT二次值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_AD.IL22nd">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="IEDParam11" desc="分段CT一次值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_AD.PI1st"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_AD.PI1st">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_AD.PI1st"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_AD.PI1st"/>
								<DAI name="offset" sAddr="B02.CNST_AD.PI1st"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_AD.PI1st">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_AD.PI1st">
									<Val>9999</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_AD.PI1st">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_AD.PI1st">
								<Val>分段CT一次值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_AD.PI1st">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="IEDParam12" desc="分段CT二次值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_AD.PI2nd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_AD.PI2nd">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_AD.PI2nd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_AD.PI2nd"/>
								<DAI name="offset" sAddr="B02.CNST_AD.PI2nd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_AD.PI2nd">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_AD.PI2nd">
									<Val>5</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_AD.PI2nd">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_AD.PI2nd">
								<Val>分段CT二次值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_AD.PI2nd">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="IEDParam13" desc="电源1高CT一次值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_AD.IH11st"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_AD.IH11st">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_AD.IH11st"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_AD.IH11st"/>
								<DAI name="offset" sAddr="B02.CNST_AD.IH11st"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_AD.IH11st">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_AD.IH11st">
									<Val>9999</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_AD.IH11st">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_AD.IH11st">
								<Val>电源1高CT一次值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_AD.IH11st">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="IEDParam14" desc="电源1高CT二次值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_AD.IH12nd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_AD.IH12nd">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_AD.IH12nd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_AD.IH12nd"/>
								<DAI name="offset" sAddr="B02.CNST_AD.IH12nd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_AD.IH12nd">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_AD.IH12nd">
									<Val>5</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_AD.IH12nd">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_AD.IH12nd">
								<Val>电源1高CT二次值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_AD.IH12nd">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="IEDParam15" desc="电源2高CT一次值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_AD.IH21st"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_AD.IH21st">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_AD.IH21st"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_AD.IH21st"/>
								<DAI name="offset" sAddr="B02.CNST_AD.IH21st"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_AD.IH21st">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_AD.IH21st">
									<Val>9999</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_AD.IH21st">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_AD.IH21st">
								<Val>电源2高CT一次值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_AD.IH21st">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="IEDParam16" desc="电源2高CT二次值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_AD.IH22nd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_AD.IH22nd">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_AD.IH22nd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_AD.IH22nd"/>
								<DAI name="offset" sAddr="B02.CNST_AD.IH22nd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_AD.IH22nd">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_AD.IH22nd">
									<Val>5</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_AD.IH22nd">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_AD.IH22nd">
								<Val>电源2高CT二次值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_AD.IH22nd">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="FuncEna1" desc="备自投功能">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_lbzt.statusXyk"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_lbzt.statusXyk"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_lbzt.statusXyk"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_lbzt.statusXyk"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_lbzt.statusXyk">
								<Val>备自投功能</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="FuncEna2" desc="备自投方式1">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_lbzt.statusXykMode1"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_lbzt.statusXykMode1"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_lbzt.statusXykMode1"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_lbzt.statusXykMode1"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_lbzt.statusXykMode1">
								<Val>备自投方式1</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="FuncEna3" desc="备自投方式2">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_lbzt.statusXykMode2"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_lbzt.statusXykMode2"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_lbzt.statusXykMode2"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_lbzt.statusXykMode2"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_lbzt.statusXykMode2">
								<Val>备自投方式2</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="FuncEna4" desc="备自投方式3">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_fbzt.statusXykMode1"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_fbzt.statusXykMode1"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_fbzt.statusXykMode1"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_fbzt.statusXykMode1"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_fbzt.statusXykMode1">
								<Val>备自投方式3</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="FuncEna5" desc="备自投方式4">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_fbzt.statusXykMode2"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_fbzt.statusXykMode2"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_fbzt.statusXykMode2"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_fbzt.statusXykMode2"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_fbzt.statusXykMode2">
								<Val>备自投方式4</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="FuncEna6" desc="过流加速保护">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_OverCurrJS.statusXyk"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_OverCurrJS.statusXyk"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_OverCurrJS.statusXyk"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_OverCurrJS.statusXyk"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_OverCurrJS.statusXyk">
								<Val>过流加速保护</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL: 2012</Val>
							</DAI>
						</DOI>
						<DOI name="FuncEna7" desc="零序过流加速保护">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Over3I0JS.statusXyk"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Over3I0JS.statusXyk"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Over3I0JS.statusXyk"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Over3I0JS.statusXyk"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Over3I0JS.statusXyk">
								<Val>零序过流加速保护</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="FuncEna8" desc="电源1过负荷减载">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_LQ.statusXykL1"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_LQ.statusXykL1"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_LQ.statusXykL1"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_LQ.statusXykL1"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_LQ.statusXykL1">
								<Val>电源1过负荷减载</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="FuncEna9" desc="电源2过负荷减载">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_LQ.statusXykL2"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_LQ.statusXykL2"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_LQ.statusXykL2"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_LQ.statusXykL2"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_LQ.statusXykL2">
								<Val>电源2过负荷减载</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="FuncEna10" desc="联切功能">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_lbzt.statusXykLQ"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_lbzt.statusXykLQ"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_lbzt.statusXykLQ"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_lbzt.statusXykLQ"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_lbzt.statusXykLQ">
								<Val>联切功能</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="RemSetEna" desc="远方修改定值">
							<DAI name="stVal" sAddr="B01.iec61850.remote_modify_set"/>
							<DAI name="dU" sAddr="B01.iec61850.remote_modify_set">
								<Val>远方修改定值</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="RemGrpEna" desc="远方切换定值区">
							<DAI name="stVal" sAddr="B01.iec61850.remote_setting_grp_strp"/>
							<DAI name="dU" sAddr="B01.iec61850.remote_setting_grp_strp">
								<Val>远方切换定值区</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="RemStrpEna" desc="远方投退压板">
							<DAI name="stVal" sAddr="B01.iec61850.remote_ctrl_strp"/>
							<DAI name="dU" sAddr="B01.iec61850.remote_ctrl_strp">
								<Val>远方投退压板</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="CurSettingGrp" desc="当前运行定值区号">
							<SDI name="mag">
								<DAI name="i" sAddr="B01.iec61850.current_setting_group_no"/>
							</SDI>
							<DAI name="dU" sAddr="B01.iec61850.current_setting_group_no">
								<Val>当前运行定值区号</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<SettingControl numOfSGs="10" actSG="1"/>
					</LN0>
					<LN lnClass="LPHD" lnType="2_GDNR_V2_LPHD_NSR-3641A-DA-G" inst="1" desc="装置物理信息">
						<DOI name="PhyNam" desc="物理装置铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>NSR3641A4 V1.22 2012-11-01 19:27:36 1234ABCD</Val>
							</DAI>
						</DOI>
						<DOI name="PhyHealth" desc="物理装置健康状况"/>
						<DOI name="Proxy" desc="是否为代理">
							<DAI name="dU">
								<Val>是否为代理</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="BI" lnClass="GGIO" lnType="2_GDNR_IND_8_GGIO_NSR-3641A-DA-G" inst="1" desc="开入信号1">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="打印">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYxValue[0]"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYxValue[0]">
								<Val>打印</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="对时">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYxValue[1]"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYxValue[1]">
								<Val>对时</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="信号复归">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYxValue[2]"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYxValue[2]">
								<Val>信号复归</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="检修状态硬压板">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYxValue[3]"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYxValue[3]">
								<Val>检修状态硬压板</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="单点遥信005">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYxValue[4]"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYxValue[4]">
								<Val>单点遥信005</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="单点遥信006">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYxValue[5]"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYxValue[5]">
								<Val>单点遥信006</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="单点遥信007">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYxValue[6]"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYxValue[6]">
								<Val>单点遥信007</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="Q0" lnClass="GGIO" lnType="2_GDNR_IND_8_GGIO_NSR-3641A-DA-G" inst="1" desc="保护信号">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="充电完成">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.bztAllow"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztAllow">
								<Val>充电完成</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="备自投方式1充电完成">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.bztAllowMode1"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztAllowMode1">
								<Val>备自投方式1充电完成</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="备自投方式2充电完成">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.bztAllowMode2"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztAllowMode2">
								<Val>备自投方式2充电完成</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="备自投方式3充电完成">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.bztAllowMode3"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztAllowMode3">
								<Val>备自投方式3充电完成</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="备自投方式4充电完成">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.bztAllowMode4"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztAllowMode4">
								<Val>备自投方式4充电完成</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="备自投动作">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.bztAct"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztAct">
								<Val>备自投动作</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXU" lnType="2_GDNR_PROT_MMXU_NSR-3641A-DA-G" inst="1" desc="保护测量">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="PPV" desc="线电压">
							<SDI name="phsAB" desc="Uab1">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UAB1].fAm"/>
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
											<Val>120</Val>
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
									<Val>500</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>500</Val>
								</DAI>
								<DAI name="dU">
									<Val>Uab1</Val>
								</DAI>
							</SDI>
							<SDI name="phsBC" desc="Ubc1">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UBC1].fAm"/>
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
											<Val>120</Val>
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
									<Val>500</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>500</Val>
								</DAI>
								<DAI name="dU">
									<Val>Ubc1</Val>
								</DAI>
							</SDI>
							<SDI name="phsCA" desc="Uca1">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UCA1].fAm"/>
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
											<Val>120</Val>
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
									<Val>500</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>500</Val>
								</DAI>
								<DAI name="dU">
									<Val>Uca1</Val>
								</DAI>
							</SDI>
							<DAI name="dU">
								<Val>线电压</Val>
							</DAI>
						</DOI>
						<DOI name="PhV" desc="相电压">
							<SDI name="phsA" desc="Ua1">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UA1].fAm"/>
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
											<Val>120</Val>
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
									<Val>500</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>500</Val>
								</DAI>
								<DAI name="dU">
									<Val>Ua1</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Ub1">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UB1].fAm"/>
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
											<Val>120</Val>
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
									<Val>500</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>500</Val>
								</DAI>
								<DAI name="dU">
									<Val>Ub1</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Uc1">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UC1].fAm"/>
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
											<Val>120</Val>
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
									<Val>500</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>500</Val>
								</DAI>
								<DAI name="dU">
									<Val>Uc1</Val>
								</DAI>
							</SDI>
							<SDI name="neut">
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
											<Val>120</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>1.0</Val>
									</DAI>
									<DAI name="offset">
										<Val>1.0</Val>
									</DAI>
								</SDI>
							</SDI>
							<SDI name="net">
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
											<Val>120</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>1.0</Val>
									</DAI>
									<DAI name="offset">
										<Val>1.0</Val>
									</DAI>
								</SDI>
							</SDI>
							<SDI name="res">
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
											<Val>120</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="magSVC">
									<DAI name="scaleFactor">
										<Val>1.0</Val>
									</DAI>
									<DAI name="offset">
										<Val>1.0</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="dU">
								<Val>相电压</Val>
							</DAI>
						</DOI>
						<DOI name="A" desc="电流">
							<SDI name="phsA" desc="Ia">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_CUR_RLY_IA].fAm"/>
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
											<Val>120</Val>
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
									<Val>130</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>130</Val>
								</DAI>
								<DAI name="dU">
									<Val>Ia</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Ib">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_CUR_RLY_IB].fAm"/>
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
											<Val>120</Val>
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
									<Val>130</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>130</Val>
								</DAI>
								<DAI name="dU">
									<Val>Ib</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Ic">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_CUR_RLY_IC].fAm"/>
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
											<Val>120</Val>
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
									<Val>130</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>130</Val>
								</DAI>
								<DAI name="dU">
									<Val>Ic</Val>
								</DAI>
							</SDI>
							<SDI name="neut" desc="3I0zc">
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
											<Val>120</Val>
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
									<Val>130</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>130</Val>
								</DAI>
								<DAI name="dU">
									<Val>3I0zc</Val>
								</DAI>
							</SDI>
							<DAI name="dU">
								<Val>电流</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXU" lnType="2_GDNR_PROT_MMXU_NSR-3641A-DA-G" inst="2" desc="保护测量">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="PPV" desc="Uca21">
							<SDI name="phsAB" desc="Uab2">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UAB2].fAm"/>
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
											<Val>120</Val>
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
									<Val>500</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>500</Val>
								</DAI>
								<DAI name="dU">
									<Val>Uab2</Val>
								</DAI>
							</SDI>
							<SDI name="phsBC" desc="Ubc2">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UBC2].fAm"/>
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
											<Val>120</Val>
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
									<Val>500</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>500</Val>
								</DAI>
								<DAI name="dU">
									<Val>Ubc2</Val>
								</DAI>
							</SDI>
							<SDI name="phsCA" desc="Uca2">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UCA2].fAm"/>
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
											<Val>120</Val>
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
									<Val>500</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>500</Val>
								</DAI>
								<DAI name="dU">
									<Val>Uca2</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UCA2].fAm">
								<Val>Uca21</Val>
							</DAI>
						</DOI>
						<DOI name="PhV" desc="相电压">
							<SDI name="phsA" desc="Ua2">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UA2].fAm"/>
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
											<Val>120</Val>
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
									<Val>500</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>500</Val>
								</DAI>
								<DAI name="dU">
									<Val>Ua2</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Ub2">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UB2].fAm"/>
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
											<Val>120</Val>
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
									<Val>500</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>500</Val>
								</DAI>
								<DAI name="dU">
									<Val>Ub2</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Uc2">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UC2].fAm"/>
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
											<Val>120</Val>
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
									<Val>500</Val>
								</DAI>
								<DAI name="zeroDb">
									<Val>500</Val>
								</DAI>
								<DAI name="dU">
									<Val>Uc2</Val>
								</DAI>
							</SDI>
							<DAI name="dU">
								<Val>相电压</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MSQI" lnType="2_GDNR_V1_MSQI_NSR-3641A-DA-G" inst="1" desc="1母电压序分量">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="SeqV" desc="U11_1">
							<SDI name="c1" desc="U11">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_U11].fAm"/>
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
								<DAI name="dU">
									<Val>U11</Val>
								</DAI>
							</SDI>
							<SDI name="c2" desc="U12">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_U12].fAm"/>
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
								<DAI name="dU">
									<Val>U12</Val>
								</DAI>
							</SDI>
							<SDI name="c3">
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
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_U11].fAm">
								<Val>U11_1</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MSQI" lnType="2_GDNR_V1_MSQI_NSR-3641A-DA-G" inst="2" desc="2母电压序分量">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="SeqV" desc="U22_1">
							<SDI name="c1" desc="U21">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_U21].fAm"/>
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
								<DAI name="dU">
									<Val>U21</Val>
								</DAI>
							</SDI>
							<SDI name="c2" desc="U22">
								<SDI name="cVal">
									<SDI name="mag">
										<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_U22].fAm"/>
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
								<DAI name="dU">
									<Val>U22</Val>
								</DAI>
							</SDI>
							<SDI name="c3">
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
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_U22].fAm">
								<Val>U22_1</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXN" lnType="2_GDNR_V1_MMXN_NSR-3641A-DA-G" inst="1" desc="进线1电压电流">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Amp" desc="IL11">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_CUR_RLY_IL1].fAm"/>
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
										<Val>20</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>100</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>100</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_InstCal.tOpADVector[EN_CUR_RLY_IL1].fAm">
								<Val>IL11</Val>
							</DAI>
						</DOI>
						<DOI name="Vol" desc="UL11">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UL1].fAm"/>
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
							<DAI name="dU" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UL1].fAm">
								<Val>UL11</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXN" lnType="2_GDNR_V1_MMXN_NSR-3641A-DA-G" inst="2" desc="进线2电压电流">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Amp" desc="IL21">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_CUR_RLY_IL2].fAm"/>
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
										<Val>20</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>100</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>100</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_InstCal.tOpADVector[EN_CUR_RLY_IL2].fAm">
								<Val>IL21</Val>
							</DAI>
						</DOI>
						<DOI name="Vol" desc="UL21">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UL2].fAm"/>
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
							<DAI name="dU" sAddr="B02.CNST_InstCal.tOpADVector[EN_VOLTAGE_UL2].fAm">
								<Val>UL21</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXN" lnType="2_GDNR_V1_MMXN_NSR-3641A-DA-G" inst="3" desc="高侧电流1">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Amp" desc="IH11">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_CUR_RLY_IH1].fAm"/>
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
										<Val>20</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>100</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>100</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_InstCal.tOpADVector[EN_CUR_RLY_IH1].fAm">
								<Val>IH11</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXN" lnType="2_GDNR_V1_MMXN_NSR-3641A-DA-G" inst="4" desc="高侧电流2">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Amp" desc="IH21">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.CNST_InstCal.tOpADVector[EN_CUR_RLY_IH2].fAm"/>
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
										<Val>20</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>100</Val>
							</DAI>
							<DAI name="zeroDb">
								<Val>100</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_InstCal.tOpADVector[EN_CUR_RLY_IH2].fAm">
								<Val>IH21</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="GAPC" lnType="2_GDNR_PUBLIC_BZT_GAPC_NSR-3641A-DA-G" inst="1" desc="备自投公共定值">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>逻辑节点铭牌</Val>
							</DAI>
							<DAI name="configRev">
								<Val>V1.22</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2003</Val>
							</DAI>
						</DOI>
						<DOI name="LivBusVal" desc="母线有压定值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_bztPub.UYYzd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_bztPub.UYYzd">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_bztPub.UYYzd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_bztPub.UYYzd"/>
								<DAI name="offset" sAddr="B02.CNST_bztPub.UYYzd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_bztPub.UYYzd">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_bztPub.UYYzd">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_bztPub.UYYzd">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_bztPub.UYYzd">
								<Val>母线有压定值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_bztPub.UYYzd">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="LivLinVal" desc="电源有压定值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_bztPub.UJXYzd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_bztPub.UJXYzd">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_bztPub.UJXYzd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_bztPub.UJXYzd"/>
								<DAI name="offset" sAddr="B02.CNST_bztPub.UJXYzd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_bztPub.UJXYzd">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_bztPub.UJXYzd">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_bztPub.UJXYzd">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_bztPub.UJXYzd">
								<Val>电源有压定值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_bztPub.UJXYzd">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="DeaVal" desc="母线无压定值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_bztPub.UWYzd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_bztPub.UWYzd">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_bztPub.UWYzd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_bztPub.UWYzd"/>
								<DAI name="offset" sAddr="B02.CNST_bztPub.UWYzd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_bztPub.UWYzd">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_bztPub.UWYzd">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_bztPub.UWYzd">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_bztPub.UWYzd">
								<Val>母线无压定值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_bztPub.UWYzd">
								<Val>SGCC MODEL: 2012</Val>
							</DAI>
						</DOI>
						<DOI name="DeaAVal1" desc="电源1无流定值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_bztPub.I1WL"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_bztPub.I1WL">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_bztPub.I1WL"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_bztPub.I1WL"/>
								<DAI name="offset" sAddr="B02.CNST_bztPub.I1WL"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_bztPub.I1WL">
									<Val>0.25</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_bztPub.I1WL">
									<Val>5</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_bztPub.I1WL">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_bztPub.I1WL">
								<Val>电源1无流定值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_bztPub.I1WL">
								<Val>SGCC MODEL: 2012</Val>
							</DAI>
						</DOI>
						<DOI name="DeaAVal2" desc="电源2无流定值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_bztPub.I2WL"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_bztPub.I2WL">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_bztPub.I2WL"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_bztPub.I2WL"/>
								<DAI name="offset" sAddr="B02.CNST_bztPub.I2WL"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_bztPub.I2WL">
									<Val>0.25</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_bztPub.I2WL">
									<Val>5</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_bztPub.I2WL">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_bztPub.I2WL">
								<Val>电源2无流定值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_bztPub.I2WL">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="OpTmms" desc="电源1跳闸时间">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_fbzt.Ttzzd1"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_fbzt.Ttzzd1"/>
								<DAI name="multiplier" sAddr="B02.CNST_fbzt.Ttzzd1"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_fbzt.Ttzzd1"/>
								<DAI name="offset" sAddr="B02.CNST_fbzt.Ttzzd1"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_fbzt.Ttzzd1"/>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_fbzt.Ttzzd1"/>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_fbzt.Ttzzd1"/>
							</SDI>
							<DAI name="minVal" sAddr="B02.CNST_fbzt.Ttzzd1"/>
							<DAI name="maxVal" sAddr="B02.CNST_fbzt.Ttzzd1"/>
							<DAI name="stepSize" sAddr="B02.CNST_fbzt.Ttzzd1"/>
							<DAI name="dU" sAddr="B02.CNST_fbzt.Ttzzd1">
								<Val>电源1跳闸时间</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_fbzt.Ttzzd1">
								<Val>SGCCMODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="OpTmms1" desc="电源2跳闸时间">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_fbzt.Ttzzd2"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_fbzt.Ttzzd2"/>
								<DAI name="multiplier" sAddr="B02.CNST_fbzt.Ttzzd2"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_fbzt.Ttzzd2"/>
								<DAI name="offset" sAddr="B02.CNST_fbzt.Ttzzd2"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_fbzt.Ttzzd2"/>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_fbzt.Ttzzd2"/>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_fbzt.Ttzzd2"/>
							</SDI>
							<DAI name="minVal" sAddr="B02.CNST_fbzt.Ttzzd2"/>
							<DAI name="maxVal" sAddr="B02.CNST_fbzt.Ttzzd2"/>
							<DAI name="stepSize" sAddr="B02.CNST_fbzt.Ttzzd2"/>
							<DAI name="dU" sAddr="B02.CNST_fbzt.Ttzzd2">
								<Val>电源2跳闸时间</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_fbzt.Ttzzd2">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="OpTmms2" desc="合备用电源短延时">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_lbzt.ThzzdH"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_lbzt.ThzzdH"/>
								<DAI name="multiplier" sAddr="B02.CNST_lbzt.ThzzdH"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_lbzt.ThzzdH"/>
								<DAI name="offset" sAddr="B02.CNST_lbzt.ThzzdH"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_lbzt.ThzzdH"/>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_lbzt.ThzzdH"/>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_lbzt.ThzzdH"/>
							</SDI>
							<DAI name="minVal" sAddr="B02.CNST_lbzt.ThzzdH"/>
							<DAI name="maxVal" sAddr="B02.CNST_lbzt.ThzzdH"/>
							<DAI name="stepSize" sAddr="B02.CNST_lbzt.ThzzdH"/>
							<DAI name="dU" sAddr="B02.CNST_lbzt.ThzzdH">
								<Val>合备用电源短延时</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_lbzt.ThzzdH">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="OpTmms3" desc="合备用电源长延时">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_lbzt.ThzzdL"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_lbzt.ThzzdL"/>
								<DAI name="multiplier" sAddr="B02.CNST_lbzt.ThzzdL"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_lbzt.ThzzdL"/>
								<DAI name="offset" sAddr="B02.CNST_lbzt.ThzzdL"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_lbzt.ThzzdL"/>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_lbzt.ThzzdL"/>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_lbzt.ThzzdL"/>
							</SDI>
							<DAI name="minVal" sAddr="B02.CNST_lbzt.ThzzdL"/>
							<DAI name="maxVal" sAddr="B02.CNST_lbzt.ThzzdL"/>
							<DAI name="stepSize" sAddr="B02.CNST_lbzt.ThzzdL"/>
							<DAI name="dU" sAddr="B02.CNST_lbzt.ThzzdL">
								<Val>合备用电源长延时</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_lbzt.ThzzdL">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="OpTmms4" desc="合分段断路器时间">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_fbzt.Thzzd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_fbzt.Thzzd"/>
								<DAI name="multiplier" sAddr="B02.CNST_fbzt.Thzzd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_fbzt.Thzzd"/>
								<DAI name="offset" sAddr="B02.CNST_fbzt.Thzzd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_fbzt.Thzzd"/>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_fbzt.Thzzd"/>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_fbzt.Thzzd"/>
							</SDI>
							<DAI name="minVal" sAddr="B02.CNST_fbzt.Thzzd"/>
							<DAI name="maxVal" sAddr="B02.CNST_fbzt.Thzzd"/>
							<DAI name="stepSize" sAddr="B02.CNST_fbzt.Thzzd"/>
							<DAI name="dU" sAddr="B02.CNST_fbzt.Thzzd">
								<Val>合分段断路器时间</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_fbzt.Thzzd">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="Enable1" desc="检电源1电压">
							<DAI name="setVal" sAddr="B02.CNST_BztXLPTDX1.Ctrl"/>
							<DAI name="dU" sAddr="B02.CNST_BztXLPTDX1.Ctrl">
								<Val>检电源1电压</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL: 2012</Val>
							</DAI>
						</DOI>
						<DOI name="Enable2" desc="检电源2电压">
							<DAI name="setVal" sAddr="B02.CNST_BztXLPTDX2.Ctrl"/>
							<DAI name="dU" sAddr="B02.CNST_BztXLPTDX2.Ctrl">
								<Val>检电源2电压</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="Enable3" desc="合后位置接入">
							<DAI name="setVal" sAddr="B02.CNST_bztPub.CtrlHH"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.CtrlHH">
								<Val>合后位置接入</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="GAPC" lnType="2_GDNR_NS3640_GAPC_NSR-3641A-DA-G" inst="2" desc="备自投定值">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>逻辑节点铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Enable" desc="备自投方式1">
							<DAI name="setVal" sAddr="B02.CNST_lbzt.ctrlMode1"/>
							<DAI name="dU" sAddr="B02.CNST_lbzt.ctrlMode1">
								<Val>备自投方式1</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL: 2012</Val>
							</DAI>
						</DOI>
						<DOI name="Enable1" desc="备自投方式2">
							<DAI name="setVal" sAddr="B02.CNST_lbzt.ctrlMode2"/>
							<DAI name="dU" sAddr="B02.CNST_lbzt.ctrlMode2">
								<Val>备自投方式2</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL: 2012</Val>
							</DAI>
						</DOI>
						<DOI name="Enable2" desc="备自投方式3">
							<DAI name="setVal" sAddr="B02.CNST_fbzt.ctrlMode1"/>
							<DAI name="dU" sAddr="B02.CNST_fbzt.ctrlMode1">
								<Val>备自投方式3</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL: 2012</Val>
							</DAI>
						</DOI>
						<DOI name="Enable3" desc="备自投方式4">
							<DAI name="setVal" sAddr="B02.CNST_fbzt.ctrlMode2"/>
							<DAI name="dU" sAddr="B02.CNST_fbzt.ctrlMode2">
								<Val>备自投方式4</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL: 2012</Val>
							</DAI>
						</DOI>
						<DOI name="Enable4" desc="联切功能">
							<DAI name="setVal" sAddr="B02.CNST_fbzt.ctrlLQ"/>
							<DAI name="dU" sAddr="B02.CNST_fbzt.ctrlLQ">
								<Val>联切功能</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="TZ1OUT" desc="联切I母">
							<DAI name="setVal" sAddr="B02.CNST_BO.LogicInputSingleMask[0]"/>
							<DAI name="minVal" sAddr="B02.CNST_BO.LogicInputSingleMask[0]">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_BO.LogicInputSingleMask[0]">
								<Val>2147483647</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_BO.LogicInputSingleMask[0]">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_BO.LogicInputSingleMask[0]">
								<Val>联切I母</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_BO.LogicInputSingleMask[0]">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="TZ1OUT1" desc="联切II母">
							<DAI name="setVal" sAddr="B02.CNST_BO.LogicInputSingleMask[1]"/>
							<DAI name="minVal" sAddr="B02.CNST_BO.LogicInputSingleMask[1]">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_BO.LogicInputSingleMask[1]">
								<Val>2147483647</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_BO.LogicInputSingleMask[1]">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_BO.LogicInputSingleMask[1]">
								<Val>联切II母</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_BO.LogicInputSingleMask[1]">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="GAPC" lnType="2_GDNR_CLD_GAPC_NSR-3641A-DA-G" inst="3" desc="过负荷减载">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>逻辑节点铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="StrVal" desc="电源1过负荷减载定值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_LQ.I1zd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_LQ.I1zd">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_LQ.I1zd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_LQ.I1zd"/>
								<DAI name="offset" sAddr="B02.CNST_LQ.I1zd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_LQ.I1zd">
									<Val>0.25</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_LQ.I1zd">
									<Val>5</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_LQ.I1zd">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_LQ.I1zd">
								<Val>电源1过负荷减载定值</Val>
							</DAI>
						</DOI>
						<DOI name="Op1" desc="第一轮过负荷减载">
							<DAI name="general" sAddr="B02.CNST_LQ.act1"/>
							<DAI name="dU" sAddr="B02.CNST_LQ.act1">
								<Val>第一轮过负荷减载</Val>
							</DAI>
						</DOI>
						<DOI name="Op2" desc="第二轮过负荷减载">
							<DAI name="general" sAddr="B02.CNST_LQ.act2"/>
							<DAI name="dU" sAddr="B02.CNST_LQ.act2">
								<Val>第二轮过负荷减载</Val>
							</DAI>
						</DOI>
						<DOI name="StrVal1" desc="电源2过负荷减载定值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_LQ.I2zd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_LQ.I2zd">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_LQ.I2zd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_LQ.I2zd"/>
								<DAI name="offset" sAddr="B02.CNST_LQ.I2zd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_LQ.I2zd">
									<Val>0.25</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_LQ.I2zd">
									<Val>5</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_LQ.I2zd">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_LQ.I2zd">
								<Val>电源2过负荷减载定值</Val>
							</DAI>
						</DOI>
						<DOI name="OpTmms" desc="第一轮过负荷减载时间">
							<DAI name="setVal" sAddr="B02.CNST_LQ.T1zd"/>
							<DAI name="minVal" sAddr="B02.CNST_LQ.T1zd">
								<Val>1000</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_LQ.T1zd">
								<Val>600000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_LQ.T1zd">
								<Val>1000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_LQ.T1zd">
								<Val>第一轮过负荷减载时间</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_LQ.T1zd">
								<Val>SGCC MODEL: 2012</Val>
							</DAI>
						</DOI>
						<DOI name="OpTmms1" desc="第二轮过负荷减载时间">
							<DAI name="setVal" sAddr="B02.CNST_LQ.T2zd"/>
							<DAI name="minVal" sAddr="B02.CNST_LQ.T2zd">
								<Val>1000</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_LQ.T2zd">
								<Val>600000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_LQ.T2zd">
								<Val>1000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_LQ.T2zd">
								<Val>第二轮过负荷减载时间</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_LQ.T2zd">
								<Val>SGCC MODEL: 2012</Val>
							</DAI>
						</DOI>
						<DOI name="Trp1Out" desc="第一轮过负荷减载">
							<DAI name="setVal" sAddr="B02.CNST_BO.LogicInputSingleMask[2]"/>
							<DAI name="minVal" sAddr="B02.CNST_BO.LogicInputSingleMask[2]">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_BO.LogicInputSingleMask[2]">
								<Val>2147483647</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_BO.LogicInputSingleMask[2]">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_BO.LogicInputSingleMask[2]">
								<Val>第一轮过负荷减载</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_BO.LogicInputSingleMask[2]">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="Trp2Out" desc="第二轮过负荷减载">
							<DAI name="setVal" sAddr="B02.CNST_BO.LogicInputSingleMask[3]"/>
							<DAI name="minVal" sAddr="B02.CNST_BO.LogicInputSingleMask[3]">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_BO.LogicInputSingleMask[3]">
								<Val>2147483647</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_BO.LogicInputSingleMask[3]">
								<Val>1</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_BO.LogicInputSingleMask[3]">
								<Val>第二轮过负荷减载</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_BO.LogicInputSingleMask[3]">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="Enable" desc="电源1过负荷减载">
							<DAI name="setVal" sAddr="B02.CNST_LQ.ctrlL1"/>
							<DAI name="dU" sAddr="B02.CNST_LQ.ctrlL1">
								<Val>电源1过负荷减载</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL: 2012</Val>
							</DAI>
						</DOI>
						<DOI name="Enable1" desc="电源2过负荷减载">
							<DAI name="setVal" sAddr="B02.CNST_LQ.ctrlL2"/>
							<DAI name="dU" sAddr="B02.CNST_LQ.ctrlL2">
								<Val>电源2过负荷减载</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="Enable2" desc="电源1过负荷取变高">
							<DAI name="setVal" sAddr="B02.CNST_LQ.ctrlSH1"/>
							<DAI name="dU" sAddr="B02.CNST_LQ.ctrlSH1">
								<Val>电源1过负荷取变高</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="Enable3" desc="电源2过负荷取变高">
							<DAI name="setVal" sAddr="B02.CNST_LQ.ctrlSH2"/>
							<DAI name="dU" sAddr="B02.CNST_LQ.ctrlSH2">
								<Val>电源2过负荷取变高</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="PTOC" lnType="2_GDNR_SECT3_V1_PTOC_NSR-3641A-DA-G" inst="4" desc="过流加速段">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="过流加速动作">
							<DAI name="general" sAddr="B02.CNST_OverCurrJS.act"/>
							<DAI name="dU" sAddr="B02.CNST_OverCurrJS.act">
								<Val>过流加速动作</Val>
							</DAI>
						</DOI>
						<DOI name="StrVal" desc="过流加速定值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_OverCurrJS.Izd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_OverCurrJS.Izd">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_OverCurrJS.Izd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_OverCurrJS.Izd"/>
								<DAI name="offset" sAddr="B02.CNST_OverCurrJS.Izd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_OverCurrJS.Izd">
									<Val>0.25</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_OverCurrJS.Izd">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_OverCurrJS.Izd">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_OverCurrJS.Izd">
								<Val>过流加速定值</Val>
							</DAI>
						</DOI>
						<DOI name="OpDlTmms" desc="过流加速时间">
							<DAI name="setVal" sAddr="B02.CNST_OverCurrJS.Tzd"/>
							<DAI name="minVal" sAddr="B02.CNST_OverCurrJS.Tzd">
								<Val>10</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_OverCurrJS.Tzd">
								<Val>3000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_OverCurrJS.Tzd">
								<Val>10</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_OverCurrJS.Tzd">
								<Val>过流加速时间</Val>
							</DAI>
						</DOI>
						<DOI name="Enable" desc="过流加速保护">
							<DAI name="setVal" sAddr="B02.CNST_OverCurrJS.ctrl"/>
							<DAI name="dU" sAddr="B02.CNST_OverCurrJS.ctrl">
								<Val>过流加速保护</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="VolBlkEna" desc="过流加速经复压">
							<DAI name="setVal" sAddr="B02.CNST_OverCurrJS.ctrlUbs"/>
							<DAI name="dU" sAddr="B02.CNST_OverCurrJS.ctrlUbs">
								<Val>过流加速经复压</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="StrValUL" desc="过流加速低电压定值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_TermUbs.ULBSzd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_TermUbs.ULBSzd">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_TermUbs.ULBSzd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_TermUbs.ULBSzd"/>
								<DAI name="offset" sAddr="B02.CNST_TermUbs.ULBSzd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_TermUbs.ULBSzd">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_TermUbs.ULBSzd">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_TermUbs.ULBSzd">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_TermUbs.ULBSzd">
								<Val>过流加速低电压定值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_TermUbs.ULBSzd">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="StrValU2" desc="过流加速负序电压定值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_TermUbs.U2BSzd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_TermUbs.U2BSzd">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_TermUbs.U2BSzd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_TermUbs.U2BSzd"/>
								<DAI name="offset" sAddr="B02.CNST_TermUbs.U2BSzd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_TermUbs.U2BSzd">
									<Val>2</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_TermUbs.U2BSzd">
									<Val>57</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_TermUbs.U2BSzd">
									<Val>1</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_TermUbs.U2BSzd">
								<Val>过流加速负序电压定值</Val>
							</DAI>
							<DAI name="dataNs" sAddr="B02.CNST_TermUbs.U2BSzd">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="PTOC" lnType="2_GDNR_SECT3_V1_PTOC_NSR-3641A-DA-G" inst="6" desc="零流加速段">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="零流加速动作">
							<DAI name="general" sAddr="B02.CNST_Over3I0JS.act"/>
							<DAI name="dU" sAddr="B02.CNST_Over3I0JS.act">
								<Val>零流加速动作</Val>
							</DAI>
						</DOI>
						<DOI name="StrVal" desc="零序过流加速定值">
							<SDI name="setMag">
								<DAI name="f" sAddr="B02.CNST_Over3I0JS.Izd"/>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit" sAddr="B02.CNST_Over3I0JS.Izd">
									<Val>A</Val>
								</DAI>
								<DAI name="multiplier" sAddr="B02.CNST_Over3I0JS.Izd"/>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor" sAddr="B02.CNST_Over3I0JS.Izd"/>
								<DAI name="offset" sAddr="B02.CNST_Over3I0JS.Izd"/>
							</SDI>
							<SDI name="minVal">
								<DAI name="f" sAddr="B02.CNST_Over3I0JS.Izd">
									<Val>0.25</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f" sAddr="B02.CNST_Over3I0JS.Izd">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f" sAddr="B02.CNST_Over3I0JS.Izd">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_Over3I0JS.Izd">
								<Val>零序过流加速定值</Val>
							</DAI>
						</DOI>
						<DOI name="OpDlTmms" desc="零序过流加速时间">
							<DAI name="setVal" sAddr="B02.CNST_Over3I0JS.Tzd"/>
							<DAI name="minVal" sAddr="B02.CNST_Over3I0JS.Tzd">
								<Val>10</Val>
							</DAI>
							<DAI name="maxVal" sAddr="B02.CNST_Over3I0JS.Tzd">
								<Val>3000</Val>
							</DAI>
							<DAI name="stepSize" sAddr="B02.CNST_Over3I0JS.Tzd">
								<Val>10</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Over3I0JS.Tzd">
								<Val>零序过流加速时间</Val>
							</DAI>
						</DOI>
						<DOI name="Enable" desc="零序过流加速保护">
							<DAI name="setVal" sAddr="B02.CNST_Over3I0JS.ctrl"/>
							<DAI name="dU" sAddr="B02.CNST_Over3I0JS.ctrl">
								<Val>零序过流加速保护</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="GAPC" lnType="2_GDNR_EVENT_BZT_GAPC_NSR-3641A-DA-G" inst="6" desc="备自投保护事件">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>逻辑节点铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="备自投启动">
							<DAI name="general" sAddr="B02.CNST_GeneralSetting.bztFault"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztFault">
								<Val>备自投启动</Val>
							</DAI>
						</DOI>
						<DOI name="Op1" desc="跳电源1断路器">
							<DAI name="general" sAddr="B02.CNST_GeneralSetting.bztActTz1"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztActTz1">
								<Val>跳电源1断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Op2" desc="合电源1高断路器">
							<DAI name="general" sAddr="B02.CNST_GeneralSetting.bztActHz1H"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztActHz1H">
								<Val>合电源1高断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Op3" desc="合电源1断路器">
							<DAI name="general" sAddr="B02.CNST_GeneralSetting.bztActHz1L"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztActHz1L">
								<Val>合电源1断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Op4" desc="跳电源2断路器">
							<DAI name="general" sAddr="B02.CNST_GeneralSetting.bztActTz2"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztActTz2">
								<Val>跳电源2断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Op5" desc="合电源2高断路器">
							<DAI name="general" sAddr="B02.CNST_GeneralSetting.bztActHz2H"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztActHz2H">
								<Val>合电源2高断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Op6" desc="合电源2断路器">
							<DAI name="general" sAddr="B02.CNST_GeneralSetting.bztActHz2L"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztActHz2L">
								<Val>合电源2断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Op7" desc="跳分段断路器">
							<DAI name="general" sAddr="B02.CNST_GeneralSetting.bztActTz3"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztActTz3">
								<Val>跳分段断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Op8" desc="合分段断路器">
							<DAI name="general" sAddr="B02.CNST_GeneralSetting.bztActHz3"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztActHz3">
								<Val>合分段断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Op9" desc="联切I母">
							<DAI name="general" sAddr="B02.CNST_GeneralSetting.bztActLq1"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztActLq1">
								<Val>联切I母</Val>
							</DAI>
						</DOI>
						<DOI name="Op10" desc="联切II母">
							<DAI name="general" sAddr="B02.CNST_GeneralSetting.bztActLq2"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztActLq2">
								<Val>联切II母</Val>
							</DAI>
						</DOI>
						<DOI name="Op11" desc="GOOSE接收跳闸">
							<DAI name="general" sAddr="B02.CNST_Goose.gooseToBo.TripYxTz"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseToBo.TripYxTz">
								<Val>GOOSE接收跳闸</Val>
							</DAI>
						</DOI>
						<DOI name="Op12" desc="GOOSE接收合闸">
							<DAI name="general" sAddr="B02.CNST_Goose.gooseToBo.TripYxHz"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseToBo.TripYxHz">
								<Val>GOOSE接收合闸</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GsSwi" lnClass="GGIO" lnType="2_GDNR_SPC_8_GGIO_NSR-3641A-DA-G" inst="1" desc="GOS软压板1">
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
						<DOI name="SPCSO1" desc="跳电源1高断路器压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[0]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[0]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[0]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[0]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[0]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[0]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[0]">
								<Val>跳电源1高断路器压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO2" desc="跳电源1断路器压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[1]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[1]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[1]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[1]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[1]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[1]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[1]">
								<Val>跳电源1断路器压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO3" desc="跳电源2高断路器压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[2]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[2]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[2]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[2]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[2]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[2]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[2]">
								<Val>跳电源2高断路器压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO4" desc="跳电源2断路器压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[3]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[3]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[3]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[3]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[3]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[3]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[3]">
								<Val>跳电源2断路器压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO5" desc="跳分段断路器压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[4]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[4]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[4]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[4]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[4]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[4]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[4]">
								<Val>跳分段断路器压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO6" desc="合电源1高断路器压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[5]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[5]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[5]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[5]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[5]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[5]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[5]">
								<Val>合电源1高断路器压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO7" desc="合电源1断路器压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[6]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[6]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[6]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[6]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[6]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[6]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[6]">
								<Val>合电源1断路器压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO8" desc="合电源2高断路器压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[7]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[7]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[7]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[7]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[7]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[7]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[7]">
								<Val>合电源2高断路器压板</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GsSwi" lnClass="GGIO" lnType="2_GDNR_SPC_8_GGIO_NSR-3641A-DA-G" inst="2" desc="GOS软压板2">
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
						<DOI name="SPCSO1" desc="合电源2断路器压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[8]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[8]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[8]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[8]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[8]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[8]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[8]">
								<Val>合电源2断路器压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO2" desc="合分段断路器压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[9]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[9]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[9]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[9]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[9]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[9]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[9]">
								<Val>合分段断路器压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO3" desc="跳闸出口1压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[10]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[10]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[10]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[10]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[10]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[10]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[10]">
								<Val>跳闸出口1压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO4" desc="跳闸出口2压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[11]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[11]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[11]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[11]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[11]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[11]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[11]">
								<Val>跳闸出口2压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO5" desc="跳闸出口3压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[12]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[12]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[12]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[12]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[12]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[12]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[12]">
								<Val>跳闸出口3压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO6" desc="跳闸出口4压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[13]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[13]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[13]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[13]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[13]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[13]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[13]">
								<Val>跳闸出口4压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO7" desc="跳闸出口5压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[14]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[14]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[14]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[14]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[14]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[14]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[14]">
								<Val>跳闸出口5压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO8" desc="跳闸出口6压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[15]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[15]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[15]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[15]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[15]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[15]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[15]">
								<Val>跳闸出口6压板</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GsSwi" lnClass="GGIO" lnType="2_GDNR_SPC_8_GGIO_NSR-3641A-DA-G" inst="3" desc="GOS软压板3">
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
						<DOI name="SPCSO1" desc="跳闸出口7压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[16]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[16]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[16]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[16]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[16]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[16]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[16]">
								<Val>跳闸出口7压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO2" desc="跳闸出口8压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[17]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[17]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[17]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[17]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[17]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[17]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[17]">
								<Val>跳闸出口8压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO3" desc="跳闸出口9压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[18]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[18]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[18]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[18]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[18]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[18]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[18]">
								<Val>跳闸出口9压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO4" desc="跳闸出口10压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[19]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[19]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[19]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[19]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[19]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[19]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[19]">
								<Val>跳闸出口10压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO5" desc="跳闸出口11压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[20]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[20]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[20]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[20]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[20]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[20]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[20]">
								<Val>跳闸出口11压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO6" desc="跳闸出口12压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[21]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[21]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[21]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[21]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[21]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[21]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[21]">
								<Val>跳闸出口12压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO7" desc="跳闸出口13压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[22]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[22]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[22]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[22]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[22]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[22]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[22]">
								<Val>跳闸出口13压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO8" desc="跳闸出口14压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[23]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[23]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[23]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[23]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[23]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[23]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[23]">
								<Val>跳闸出口14压板</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GsSwi" lnClass="GGIO" lnType="2_GDNR_SPC_8_GGIO_NSR-3641A-DA-G" inst="4" desc="GOS软压板4">
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
						<DOI name="SPCSO1" desc="跳闸出口15压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[24]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[24]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[24]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[24]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[24]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[24]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[24]">
								<Val>跳闸出口15压板</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO2" desc="跳闸出口16压板">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[25]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[25]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_Goose.gooseCKen[25]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseCKen[25]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseCKen[25]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseCKen[25]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseCKen[25]">
								<Val>跳闸出口16压板</Val>
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
					<LN prefix="SvSwi" lnClass="GGIO" lnType="2_GDNR_SPC_8_GGIO_NSR-3641A-DA-G" inst="1" desc="SV软压板1">
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
						<DOI name="SPCSO1" desc="电源1SV接收">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_AD.svJumper[0]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_AD.svJumper[0]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_AD.svJumper[0]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_AD.svJumper[0]"/>
							<DAI name="q" sAddr="B02.CNST_AD.svJumper[0]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.svJumper[0]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_AD.svJumper[0]">
								<Val>电源1SV接收</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO2" desc="电源1高SV接收">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_AD.svJumper[1]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_AD.svJumper[1]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_AD.svJumper[1]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_AD.svJumper[1]"/>
							<DAI name="q" sAddr="B02.CNST_AD.svJumper[1]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.svJumper[1]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_AD.svJumper[1]">
								<Val>电源1高SV接收</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO3" desc="电源2SV接收">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_AD.svJumper[2]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_AD.svJumper[2]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_AD.svJumper[2]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_AD.svJumper[2]"/>
							<DAI name="q" sAddr="B02.CNST_AD.svJumper[2]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.svJumper[2]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_AD.svJumper[2]">
								<Val>电源2SV接收</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO4" desc="电源2高SV接收">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_AD.svJumper[3]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_AD.svJumper[3]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_AD.svJumper[3]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_AD.svJumper[3]"/>
							<DAI name="q" sAddr="B02.CNST_AD.svJumper[3]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.svJumper[3]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_AD.svJumper[3]">
								<Val>电源2高SV接收</Val>
							</DAI>
						</DOI>
						<DOI name="SPCSO5" desc="分段(桥)SV接收">
							<SDI name="SBOw">
								<DAI name="ctlVal" sAddr="B02.CNST_AD.svJumper[4]"/>
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal" sAddr="B02.CNST_AD.svJumper[4]"/>
							</SDI>
							<SDI name="Cancel">
								<DAI name="ctlVal" sAddr="B02.CNST_AD.svJumper[4]"/>
							</SDI>
							<DAI name="stVal" sAddr="B02.CNST_AD.svJumper[4]"/>
							<DAI name="q" sAddr="B02.CNST_AD.svJumper[4]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.svJumper[4]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_AD.svJumper[4]">
								<Val>分段(桥)SV接收</Val>
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
					<LN prefix="GO" lnClass="GGIO" lnType="2_GDNR_IND_8_GGIO_NSR-3641A-DA-G" inst="1" desc="GOOSE开入信号1">
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
						<DOI name="Ind1" desc="电源1合后位置">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[0]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[0]">
								<Val>电源1合后位置</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="电源2合后位置">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[1]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[1]">
								<Val>电源2合后位置</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="分段合后位置">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[2]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[2]">
								<Val>分段合后位置</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="遥信开入04">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[3]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[3]">
								<Val>遥信开入04</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="遥信开入05">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[4]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[4]">
								<Val>遥信开入05</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="遥信开入06">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[5]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[5]">
								<Val>遥信开入06</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="遥信开入07">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[6]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[6]">
								<Val>遥信开入07</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="遥信开入08">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[7]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[7]">
								<Val>遥信开入08</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GO" lnClass="GGIO" lnType="2_GDNR_IND_8_GGIO_NSR-3641A-DA-G" inst="2" desc="GOOSE开入信号2">
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
						<DOI name="Ind1" desc="遥信开入09">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[8]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[8]">
								<Val>遥信开入09</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="遥信开入10">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[9]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[9]">
								<Val>遥信开入10</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="遥信开入11">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[10]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[10]">
								<Val>遥信开入11</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="遥信开入12">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[11]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[11]">
								<Val>遥信开入12</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="遥信开入13">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[12]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[12]">
								<Val>遥信开入13</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="遥信开入14">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[13]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[13]">
								<Val>遥信开入14</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="遥信开入15">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[14]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[14]">
								<Val>遥信开入15</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="遥信开入16">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[15]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[15]">
								<Val>遥信开入16</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GO" lnClass="GGIO" lnType="2_GDNR_IND_8_GGIO_NSR-3641A-DA-G" inst="3" desc="GOOSE开入信号3">
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
						<DOI name="Ind1" desc="遥信开入17">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[16]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[16]">
								<Val>遥信开入17</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="遥信开入18">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[17]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[17]">
								<Val>遥信开入18</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="遥信开入19">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[18]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[18]">
								<Val>遥信开入19</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="遥信开入20">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[19]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[19]">
								<Val>遥信开入20</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="遥信开入21">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[20]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[20]">
								<Val>遥信开入21</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="遥信开入22">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[21]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[21]">
								<Val>遥信开入22</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="遥信开入23">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[22]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[22]">
								<Val>遥信开入23</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="遥信开入24">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[23]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[23]">
								<Val>遥信开入24</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GO" lnClass="GGIO" lnType="2_GDNR_IND_8_GGIO_NSR-3641A-DA-G" inst="4" desc="GOOSE开入信号4">
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
						<DOI name="Ind1" desc="遥信开入25">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[24]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[24]">
								<Val>遥信开入25</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="遥信开入26">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[25]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[25]">
								<Val>遥信开入26</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="遥信开入27">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[26]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[26]">
								<Val>遥信开入27</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="遥信开入28">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[27]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[27]">
								<Val>遥信开入28</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="遥信开入29">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[28]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[28]">
								<Val>遥信开入29</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="遥信开入30">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[29]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[29]">
								<Val>遥信开入30</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="遥信开入31">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[30]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[30]">
								<Val>遥信开入31</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="遥信开入32">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[31]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[31]">
								<Val>遥信开入32</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GO" lnClass="GGIO" lnType="2_GDNR_IND_8_GGIO_NSR-3641A-DA-G" inst="5" desc="GOOSE开入信号5">
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
						<DOI name="Ind1" desc="遥信开入33">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[32]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[32]">
								<Val>遥信开入33</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="遥信开入34">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[33]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[33]">
								<Val>遥信开入34</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="遥信开入35">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[34]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[34]">
								<Val>遥信开入35</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="遥信开入36">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[35]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[35]">
								<Val>遥信开入36</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="遥信开入37">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[36]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[36]">
								<Val>遥信开入37</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="遥信开入38">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[37]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[37]">
								<Val>遥信开入38</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="遥信开入39">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[38]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[38]">
								<Val>遥信开入39</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="遥信开入40">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[39]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[39]">
								<Val>遥信开入40</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GO" lnClass="GGIO" lnType="2_GDNR_IND_8_GGIO_NSR-3641A-DA-G" inst="6" desc="GOOSE开入信号6">
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
						<DOI name="Ind1" desc="遥信开入41">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[40]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[40]">
								<Val>遥信开入41</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="遥信开入42">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[41]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[41]">
								<Val>遥信开入42</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="遥信开入43">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[42]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[42]">
								<Val>遥信开入43</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="遥信开入44">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.SingleYx[43]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.SingleYx[43]">
								<Val>遥信开入44</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="电源1位置">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.TwinsProcessYx[0]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.TwinsProcessYx[0]">
								<Val>电源1位置</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="电源2位置">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.TwinsProcessYx[1]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.TwinsProcessYx[1]">
								<Val>电源2位置</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="分段位置">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.TwinsProcessYx[2]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.TwinsProcessYx[2]">
								<Val>分段位置</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="接收双位置遥信4">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.TwinsProcessYx[3]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.TwinsProcessYx[3]">
								<Val>接收双位置遥信4</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GO" lnClass="GGIO" lnType="2_GDNR_IND_8_GGIO_NSR-3641A-DA-G" inst="7" desc="GOOSE开入信号7">
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
						<DOI name="Ind1" desc="接收双位置遥信5">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.TwinsProcessYx[4]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.TwinsProcessYx[4]">
								<Val>接收双位置遥信5</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="接收双位置遥信6">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.TwinsProcessYx[5]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.TwinsProcessYx[5]">
								<Val>接收双位置遥信6</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="接收双位置遥信7">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.TwinsProcessYx[6]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.TwinsProcessYx[6]">
								<Val>接收双位置遥信7</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="接收双位置遥信8">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.TwinsProcessYx[7]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.TwinsProcessYx[7]">
								<Val>接收双位置遥信8</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="P层接收备自投总闭锁1">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[0]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[0]">
								<Val>P层接收备自投总闭锁1</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="P层接收备自投总闭锁2">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[1]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[1]">
								<Val>P层接收备自投总闭锁2</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="P层接收备自投总闭锁3">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[2]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[2]">
								<Val>P层接收备自投总闭锁3</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="P层接收备自投总闭锁4">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[3]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[3]">
								<Val>P层接收备自投总闭锁4</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GO" lnClass="GGIO" lnType="2_GDNR_IND_8_GGIO_NSR-3641A-DA-G" inst="8" desc="GOOSE开入信号8">
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
						<DOI name="Ind1" desc="P层接收备自投总闭锁5">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[4]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[4]">
								<Val>P层接收备自投总闭锁5</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="P层接收备自投总闭锁6">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[5]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[5]">
								<Val>P层接收备自投总闭锁6</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="P层接收备自投总闭锁7">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[6]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[6]">
								<Val>P层接收备自投总闭锁7</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="P层接收备自投总闭锁8">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[7]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[7]">
								<Val>P层接收备自投总闭锁8</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="P层接收1#变保护动作1">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[8]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[8]">
								<Val>P层接收1#变保护动作1</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="P层接收1#变保护动作2">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[9]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[9]">
								<Val>P层接收1#变保护动作2</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="P层接收1#变保护动作3">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[10]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[10]">
								<Val>P层接收1#变保护动作3</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="P层接收1#变保护动作4">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[11]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[11]">
								<Val>P层接收1#变保护动作4</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GO" lnClass="GGIO" lnType="2_GDNR_IND_8_GGIO_NSR-3641A-DA-G" inst="9" desc="GOOSE开入信号9">
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
						<DOI name="Ind1" desc="P层接收1#变保护动作5">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[12]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[12]">
								<Val>P层接收1#变保护动作5</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="P层接收1#变保护动作6">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[13]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[13]">
								<Val>P层接收1#变保护动作6</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="P层接收1#变保护动作7">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[14]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[14]">
								<Val>P层接收1#变保护动作7</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="P层接收1#变保护动作8">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[15]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[15]">
								<Val>P层接收1#变保护动作8</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="P层接收2#变保护动作1">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[16]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[16]">
								<Val>P层接收2#变保护动作1</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="P层接收2#变保护动作2">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[17]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[17]">
								<Val>P层接收2#变保护动作2</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="P层接收2#变保护动作3">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[18]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[18]">
								<Val>P层接收2#变保护动作3</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="P层接收2#变保护动作4">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[19]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[19]">
								<Val>P层接收2#变保护动作4</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GO" lnClass="GGIO" lnType="2_GDNR_IND_8_GGIO_NSR-3641A-DA-G" inst="10" desc="GOOSE开入信号10">
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
						<DOI name="Ind1" desc="P层接收2#变保护动作5">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[20]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[20]">
								<Val>P层接收2#变保护动作5</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="P层接收2#变保护动作6">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[21]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[21]">
								<Val>P层接收2#变保护动作6</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="P层接收2#变保护动作7">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[22]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[22]">
								<Val>P层接收2#变保护动作7</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="P层接收2#变保护动作8">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[23]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.BsProcessYx[23]">
								<Val>P层接收2#变保护动作8</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice inst="LD0" desc="装置信息">
					<LN0 lnClass="LLN0" lnType="2_GDNR_V3_LLN0_NSR-3641A-DA-G" inst="" desc="逻辑0">
						<DataSet name="dsAin" desc="遥测数据集">
							<FCDA ldInst="LD0" lnClass="SPVT" lnInst="1" doName="Vol" fc="MX"/>
							<FCDA ldInst="LD0" lnClass="STMP" lnInst="1" doName="Tmp" fc="MX"/>
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
						</DataSet>
						<DataSet name="dsWarning" desc="告警信号数据集">
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm17" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm18" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm19" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm20" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm21" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm22" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm23" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm24" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm25" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm26" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm27" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm28" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm29" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm30" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm31" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm32" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm17" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm18" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm19" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm20" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm21" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm22" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm23" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm24" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm25" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm26" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm27" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm28" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm29" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm30" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm31" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm32" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm17" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm18" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm19" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm20" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm21" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm22" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm23" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm24" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm25" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm26" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm27" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm28" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm29" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm30" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm31" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm32" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="4" doName="Alm1" fc="ST"/>
						</DataSet>
						<DataSet name="dsCommState" desc="通信工况信号数据集">
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm17" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm18" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm19" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm20" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm21" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm22" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm23" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm24" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm25" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm26" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm27" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm28" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm29" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm30" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm31" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm32" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm17" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm18" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm19" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm20" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm21" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm22" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm23" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm24" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm25" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm26" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm27" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm28" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm29" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm30" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm31" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm32" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm17" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm18" fc="ST"/>
						</DataSet>
						<DataSet name="dsDeviceState" desc="装置运行状态数据集">
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind6" fc="ST"/>
						</DataSet>
						<DataSet name="dsLog" desc="日志记录数据集">
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm17" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm18" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm19" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm20" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm21" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm22" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm23" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm24" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm25" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm26" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm27" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm28" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm29" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm30" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm31" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="1" doName="Alm32" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm17" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm18" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm19" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm20" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm21" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm22" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm23" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm24" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm25" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm26" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm27" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm28" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm29" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm30" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm31" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="1" doName="Alm32" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="GOAlm" lnClass="GGIO" lnInst="2" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm17" fc="ST"/>
							<FCDA ldInst="LD0" prefix="SVAlm" lnClass="GGIO" lnInst="2" doName="Alm18" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Alm" lnClass="GGIO" lnInst="1" doName="Alm1" fc="ST"/>
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
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm17" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm18" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm19" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm20" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm21" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm22" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm23" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm24" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm25" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm26" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm27" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm28" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm29" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm30" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm31" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="1" doName="Alm32" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm17" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm18" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm19" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm20" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm21" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm22" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm23" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm24" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm25" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm26" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm27" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm28" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm29" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm30" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm31" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="2" doName="Alm32" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm6" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm7" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm8" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm9" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm10" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm11" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm12" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm13" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm14" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm15" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm16" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm17" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm18" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm19" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm20" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm21" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm22" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm23" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm24" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm25" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm26" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm27" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm28" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm29" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm30" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm31" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="3" doName="Alm32" fc="ST"/>
							<FCDA ldInst="LD0" prefix="Warn" lnClass="GGIO" lnInst="4" doName="Alm1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind4" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind5" fc="ST"/>
							<FCDA ldInst="LD0" prefix="DSta" lnClass="GGIO" lnInst="1" doName="Ind6" fc="ST"/>
						</DataSet>
						<ReportControl name="brcbAlarm" datSet="dsAlarm" intgPd="300000" rptID="" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="false" dupd="false" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="brcbCommState" datSet="dsCommState" intgPd="300000" rptID="" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" period="true"/>
							<OptFields seqNum="true" timeStamp="false" dataSet="false" reasonCode="false" dataRef="false" entryID="false" configRef="false"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="urcbAin" datSet="dsAin" intgPd="1800000" rptID="" confRev="1" buffered="false" bufTime="0">
							<TrgOps dchg="true" period="true"/>
							<OptFields seqNum="true" timeStamp="false" dataSet="false" reasonCode="false" dataRef="false" entryID="false" configRef="false"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="brcbWarning" datSet="dsWarning" intgPd="0" rptID="" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="false" dupd="false" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="false"/>
							<RptEnabled max="16"/>
						</ReportControl>
						<ReportControl name="brcbDeviceState" datSet="dsDeviceState" intgPd="0" rptID="" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="false" dupd="false" period="true"/>
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>逻辑节点铭牌</Val>
							</DAI>
							<DAI name="configRev">
								<Val>V1.22</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC61850-7-4:2003</Val>
							</DAI>
						</DOI>
						<DOI name="LEDRs" desc="信号复归">
							<DAI name="stVal" sAddr="B01.event.signal_reset"/>
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
							<DAI name="dU" sAddr="B01.event.signal_reset">
								<Val>信号复归</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="LPHD" lnType="2_GDNR_V2_LPHD_NSR-3641A-DA-G" inst="1" desc="装置物理信息">
						<DOI name="PhyNam" desc="物理装置铭牌"/>
						<DOI name="PhyHealth" desc="物理装置健康状况"/>
						<DOI name="Proxy" desc="是否为代理">
							<DAI name="dU">
								<Val>是否为代理</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="Alm" lnClass="GGIO" lnType="2_GDNR_EVE_GGIO_NSR-3641A-DA-G" inst="1" desc="告警信号1">
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
						<DOI name="Alm1" desc="装置故障">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.devBlock"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.devBlock">
								<Val>装置故障</Val>
							</DAI>
						</DOI>
						<DOI name="Alm2" desc="运行异常">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.devAlarm"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.devAlarm">
								<Val>运行异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm3" desc="保护CPU插件异常">
							<DAI name="stVal" sAddr="B01.master.cpu_error_bs"/>
							<DAI name="dU" sAddr="B01.master.cpu_error_bs">
								<Val>保护CPU插件异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm4" desc="定值越界">
							<DAI name="stVal" sAddr="B01.master.setting_error"/>
							<DAI name="dU" sAddr="B01.master.setting_error">
								<Val>定值越界</Val>
							</DAI>
						</DOI>
						<DOI name="Alm5" desc="智能IO插件闭锁">
							<DAI name="stVal" sAddr="B01.calculate.io_bs"/>
							<DAI name="dU" sAddr="B01.calculate.io_bs">
								<Val>智能IO插件闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="Alm6" desc="定值越界闭锁">
							<DAI name="stVal" sAddr="B01.bio.setting_out_of_range"/>
							<DAI name="dU" sAddr="B01.bio.setting_out_of_range">
								<Val>定值越界闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="Alm7" desc="DSP内存检测出错">
							<DAI name="stVal" sAddr="B01.board02_ram_err"/>
							<DAI name="dU" sAddr="B01.board02_ram_err">
								<Val>DSP内存检测出错</Val>
							</DAI>
						</DOI>
						<DOI name="Alm8" desc="BSP闭锁">
							<DAI name="stVal" sAddr="B02.bsp_bs_value"/>
							<DAI name="dU" sAddr="B02.bsp_bs_value">
								<Val>BSP闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="Alm9" desc="SYS闭锁">
							<DAI name="stVal" sAddr="B02.sys_bs_value"/>
							<DAI name="dU" sAddr="B02.sys_bs_value">
								<Val>SYS闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="Alm10" desc="装置闭锁">
							<DAI name="stVal" sAddr="B02.app_bs_value"/>
							<DAI name="dU" sAddr="B02.app_bs_value">
								<Val>装置闭锁</Val>
							</DAI>
						</DOI>
						<DOI name="Alm11" desc="BSP报警">
							<DAI name="stVal" sAddr="B02.bsp_bj_value"/>
							<DAI name="dU" sAddr="B02.bsp_bj_value">
								<Val>BSP报警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm12" desc="SYS报警">
							<DAI name="stVal" sAddr="B02.sys_bj_value"/>
							<DAI name="dU" sAddr="B02.sys_bj_value">
								<Val>SYS报警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm13" desc="装置报警">
							<DAI name="stVal" sAddr="B02.app_bj_value"/>
							<DAI name="dU" sAddr="B02.app_bj_value">
								<Val>装置报警</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOAlm" lnClass="GGIO" lnType="2_GDNR_EVE_GGIO_NSR-3641A-DA-G" inst="1" desc="GOOSE告警信号1">
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
						<DOI name="Alm1" desc="链路名称1GOSA网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[0]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[0]">
								<Val>链路名称1GOSA网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm2" desc="链路名称1GOSB网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[0]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[0]">
								<Val>链路名称1GOSB网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm3" desc="链路名称1GOS配置不一致">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[0]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[0]">
								<Val>链路名称1GOS配置不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm4" desc="链路名称2GOSA网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[1]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[1]">
								<Val>链路名称2GOSA网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm5" desc="链路名称2GOSB网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[1]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[1]">
								<Val>链路名称2GOSB网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm6" desc="链路名称2GOS配置不一致">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[1]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[1]">
								<Val>链路名称2GOS配置不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm7" desc="链路名称3GOSA网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[2]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[2]">
								<Val>链路名称3GOSA网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm8" desc="链路名称3GOSB网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[2]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[2]">
								<Val>链路名称3GOSB网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm9" desc="链路名称3GOS配置不一致">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[2]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[2]">
								<Val>链路名称3GOS配置不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm10" desc="链路名称4GOSA网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[3]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[3]">
								<Val>链路名称4GOSA网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm11" desc="链路名称4GOSB网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[3]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[3]">
								<Val>链路名称4GOSB网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm12" desc="链路名称4GOS配置不一致">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[3]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[3]">
								<Val>链路名称4GOS配置不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm13" desc="链路名称5GOSA网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[4]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[4]">
								<Val>链路名称5GOSA网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm14" desc="链路名称5GOSB网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[4]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[4]">
								<Val>链路名称5GOSB网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm15" desc="链路名称5GOS配置不一致">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[4]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[4]">
								<Val>链路名称5GOS配置不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm16" desc="链路名称6GOSA网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[5]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[5]">
								<Val>链路名称6GOSA网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm17" desc="链路名称6GOSB网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[5]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[5]">
								<Val>链路名称6GOSB网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm18" desc="链路名称6GOS配置不一致">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[5]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[5]">
								<Val>链路名称6GOS配置不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm19" desc="链路名称7GOSA网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[6]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[6]">
								<Val>链路名称7GOSA网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm20" desc="链路名称7GOSB网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[6]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[6]">
								<Val>链路名称7GOSB网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm21" desc="链路名称7GOS配置不一致">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[6]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[6]">
								<Val>链路名称7GOS配置不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm22" desc="链路名称8GOSA网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[7]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[7]">
								<Val>链路名称8GOSA网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm23" desc="链路名称8GOSB网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[7]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[7]">
								<Val>链路名称8GOSB网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm24" desc="链路名称8GOS配置不一致">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[7]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[7]">
								<Val>链路名称8GOS配置不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm25" desc="链路名称9GOSA网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[8]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[8]">
								<Val>链路名称9GOSA网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm26" desc="链路名称9GOSB网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[8]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[8]">
								<Val>链路名称9GOSB网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm27" desc="链路名称9GOS配置不一致">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[8]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[8]">
								<Val>链路名称9GOS配置不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm28" desc="链路名称10GOSA网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[9]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[9]">
								<Val>链路名称10GOSA网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm29" desc="链路名称10GOSB网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[9]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[9]">
								<Val>链路名称10GOSB网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm30" desc="链路名称10GOS配置不一致">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[9]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[9]">
								<Val>链路名称10GOS配置不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm31" desc="链路名称11GOSA网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[10]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[10]">
								<Val>链路名称11GOSA网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm32" desc="链路名称11GOSB网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[10]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[10]">
								<Val>链路名称11GOSB网中断</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOAlm" lnClass="GGIO" lnType="2_GDNR_EVE_GGIO_NSR-3641A-DA-G" inst="2" desc="GOOSE告警信号2">
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
						<DOI name="Alm1" desc="链路名称11GOS配置不一致">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[10]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[10]">
								<Val>链路名称11GOS配置不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm2" desc="链路名称12GOSA网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[11]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[11]">
								<Val>链路名称12GOSA网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm3" desc="链路名称12GOSB网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[11]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[11]">
								<Val>链路名称12GOSB网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm4" desc="链路名称12GOS配置不一致">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[11]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[11]">
								<Val>链路名称12GOS配置不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm5" desc="链路名称13GOSA网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[12]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[12]">
								<Val>链路名称13GOSA网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm6" desc="链路名称13GOSB网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[12]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[12]">
								<Val>链路名称13GOSB网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm7" desc="链路名称13GOS配置不一致">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[12]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[12]">
								<Val>链路名称13GOS配置不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm8" desc="链路名称14GOSA网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[13]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[13]">
								<Val>链路名称14GOSA网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm9" desc="链路名称14GOSB网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[13]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[13]">
								<Val>链路名称14GOSB网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm10" desc="链路名称14GOS配置不一致">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[13]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[13]">
								<Val>链路名称14GOS配置不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm11" desc="链路名称15GOSA网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[14]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[14]">
								<Val>链路名称15GOSA网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm12" desc="链路名称15GOSB网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[14]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[14]">
								<Val>链路名称15GOSB网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm13" desc="链路名称15GOS配置不一致">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[14]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[14]">
								<Val>链路名称15GOS配置不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm14" desc="链路名称16GOSA网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[15]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_a_link_down[15]">
								<Val>链路名称16GOSA网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm15" desc="链路名称16GOSB网中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[15]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_b_link_down[15]">
								<Val>链路名称16GOSB网中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm16" desc="链路名称16GOS配置不一致">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[15]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_cfg_err[15]">
								<Val>链路名称16GOS配置不一致</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="SPVT" lnType="2_GDNR_EX_V1_SPVT_NSR-3641A-DA-G" inst="1" desc="装置电压监测">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="Vol" desc="装置工作电压">
							<SDI name="mag">
								<DAI name="f" sAddr="B02.CNST_GeneralSetting.referPower"/>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.referPower">
								<Val>装置工作电压</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="STMP" lnType="2_GDNR_EX_V1_STMP_NSR-3641A-DA-G" inst="1" desc="装置温度监测">
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
								<Val>V1.22</Val>
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
								<DAI name="f" sAddr="B02.CNST_GeneralSetting.temperature"/>
							</SDI>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.temperature">
								<Val>装置温度</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="Warn" lnClass="GGIO" lnType="2_GDNR_ALM_32_GGIO_NSR-3641A-DA-G" inst="1" desc="自检信号1">
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
						<DOI name="Alm1" desc="I母PT断线">
							<DAI name="stVal" sAddr="B02.CNST_BztPTDX.act1"/>
							<DAI name="dU" sAddr="B02.CNST_BztPTDX.act1">
								<Val>I母PT断线</Val>
							</DAI>
						</DOI>
						<DOI name="Alm2" desc="II母PT断线">
							<DAI name="stVal" sAddr="B02.CNST_BztPTDX.act2"/>
							<DAI name="dU" sAddr="B02.CNST_BztPTDX.act2">
								<Val>II母PT断线</Val>
							</DAI>
						</DOI>
						<DOI name="Alm3" desc="电源1PT断线">
							<DAI name="stVal" sAddr="B02.CNST_BztXLPTDX1.act"/>
							<DAI name="dU" sAddr="B02.CNST_BztXLPTDX1.act">
								<Val>电源1PT断线</Val>
							</DAI>
						</DOI>
						<DOI name="Alm4" desc="电源2PT断线">
							<DAI name="stVal" sAddr="B02.CNST_BztXLPTDX2.act"/>
							<DAI name="dU" sAddr="B02.CNST_BztXLPTDX2.act">
								<Val>电源2PT断线</Val>
							</DAI>
						</DOI>
						<DOI name="Alm5" desc="电源1跳位异常">
							<DAI name="stVal" sAddr="B02.CNST_1DLTWJYC.Almact"/>
							<DAI name="dU" sAddr="B02.CNST_1DLTWJYC.Almact">
								<Val>电源1跳位异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm6" desc="电源2跳位异常">
							<DAI name="stVal" sAddr="B02.CNST_2DLTWJYC.Almact"/>
							<DAI name="dU" sAddr="B02.CNST_2DLTWJYC.Almact">
								<Val>电源2跳位异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm7" desc="分段跳位异常">
							<DAI name="stVal" sAddr="B02.CNST_3DLTWJYC.Almact"/>
							<DAI name="dU" sAddr="B02.CNST_3DLTWJYC.Almact">
								<Val>分段跳位异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm8" desc="CT断线">
							<DAI name="stVal" sAddr="B02.CNST_CTDX.act"/>
							<DAI name="dU" sAddr="B02.CNST_CTDX.act">
								<Val>CT断线</Val>
							</DAI>
						</DOI>
						<DOI name="Alm9" desc="备自投动作成功">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.bztAlmSucc"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztAlmSucc">
								<Val>备自投动作成功</Val>
							</DAI>
						</DOI>
						<DOI name="Alm10" desc="备自投动作失败">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.bztAlmFail"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztAlmFail">
								<Val>备自投动作失败</Val>
							</DAI>
						</DOI>
						<DOI name="Alm11" desc="断路器拒跳">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.bztAlmJT"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztAlmJT">
								<Val>断路器拒跳</Val>
							</DAI>
						</DOI>
						<DOI name="Alm12" desc="电源1断路器拒跳">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.bztAlmJT1DL"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztAlmJT1DL">
								<Val>电源1断路器拒跳</Val>
							</DAI>
						</DOI>
						<DOI name="Alm13" desc="电源2断路器拒跳">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.bztAlmJT2DL"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztAlmJT2DL">
								<Val>电源2断路器拒跳</Val>
							</DAI>
						</DOI>
						<DOI name="Alm14" desc="分段断路器拒跳">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.bztAlmJT3DL"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztAlmJT3DL">
								<Val>分段断路器拒跳</Val>
							</DAI>
						</DOI>
						<DOI name="Alm15" desc="断路器拒合">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.bztAlmJH"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztAlmJH">
								<Val>断路器拒合</Val>
							</DAI>
						</DOI>
						<DOI name="Alm16" desc="电源1断路器拒合">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.bztAlmJH1DL"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztAlmJH1DL">
								<Val>电源1断路器拒合</Val>
							</DAI>
						</DOI>
						<DOI name="Alm17" desc="电源2断路器拒合">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.bztAlmJH2DL"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztAlmJH2DL">
								<Val>电源2断路器拒合</Val>
							</DAI>
						</DOI>
						<DOI name="Alm18" desc="分段断路器拒合">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.bztAlmJH3DL"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztAlmJH3DL">
								<Val>分段断路器拒合</Val>
							</DAI>
						</DOI>
						<DOI name="Alm19" desc="对时异常">
							<DAI name="stVal" sAddr="B01.synctime.gps_lost_state"/>
							<DAI name="dU" sAddr="B01.synctime.gps_lost_state">
								<Val>对时异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm20" desc="板卡异常报警">
							<DAI name="stVal" sAddr="B01.bio.board_inactive"/>
							<DAI name="dU" sAddr="B01.bio.board_inactive">
								<Val>板卡异常报警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm21" desc="出口传动使能">
							<DAI name="stVal" sAddr="B02.CNST_BO.testEnable"/>
							<DAI name="dU" sAddr="B02.CNST_BO.testEnable">
								<Val>出口传动使能</Val>
							</DAI>
						</DOI>
						<DOI name="Alm22" desc="检修状态不一致">
							<DAI name="stVal" sAddr="B02.CNST_AD.jxStateErr"/>
							<DAI name="dU" sAddr="B02.CNST_AD.jxStateErr">
								<Val>检修状态不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm23" desc="PGOS有检修不一致">
							<DAI name="stVal" sAddr="B02.CNST_Goose.ProcessJxStateErr"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.ProcessJxStateErr">
								<Val>PGOS有检修不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm24" desc="SV总告警">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_all_alarm"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_all_alarm">
								<Val>SV总告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm25" desc="MU数据无效告警">
							<DAI name="stVal" sAddr="B02.CNST_AD.sample_mu_invalid"/>
							<DAI name="dU" sAddr="B02.CNST_AD.sample_mu_invalid">
								<Val>MU数据无效告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm26" desc="SV数据无效告警">
							<DAI name="stVal" sAddr="B02.CNST_AD.sample_sv_invalid"/>
							<DAI name="dU" sAddr="B02.CNST_AD.sample_sv_invalid">
								<Val>SV数据无效告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm27" desc="MU装置失步告警">
							<DAI name="stVal" sAddr="B02.CNST_AD.sample_mu_unSyn"/>
							<DAI name="dU" sAddr="B02.CNST_AD.sample_mu_unSyn">
								<Val>MU装置失步告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm28" desc="MU延迟变化告警">
							<DAI name="stVal" sAddr="B02.CNST_AD.sample_delayTime_Modify"/>
							<DAI name="dU" sAddr="B02.CNST_AD.sample_delayTime_Modify">
								<Val>MU延迟变化告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm29" desc="GOOSE总告警">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.gos_all_alarm"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.gos_all_alarm">
								<Val>GOOSE总告警</Val>
							</DAI>
						</DOI>
						<DOI name="Alm30" desc="双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAlm"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAlm">
								<Val>双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm31" desc="Ua1双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_Ua1]"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_Ua1]">
								<Val>Ua1双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm32" desc="Ub1双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_Ub1]"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_Ub1]">
								<Val>Ub1双AD不一致</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="Warn" lnClass="GGIO" lnType="2_GDNR_ALM_32_GGIO_NSR-3641A-DA-G" inst="2" desc="自检信号2">
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
						<DOI name="Alm1" desc="Uc1双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_Uc1]"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_Uc1]">
								<Val>Uc1双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm2" desc="Ua2双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_Ua2]"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_Ua2]">
								<Val>Ua2双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm3" desc="Ub2双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_Ub2]"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_Ub2]">
								<Val>Ub2双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm4" desc="Uc2双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_Uc2]"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_Uc2]">
								<Val>Uc2双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm5" desc="Ia双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_Ia]"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_Ia]">
								<Val>Ia双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm6" desc="Ib双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_Ib]"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_Ib]">
								<Val>Ib双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm7" desc="Ic双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_Ic]"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_Ic]">
								<Val>Ic双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm8" desc="IH1双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_IH1]"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_IH1]">
								<Val>IH1双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm9" desc="IH2双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_IH2]"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_IH2]">
								<Val>IH2双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm10" desc="UH1双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_UH1]"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_UH1]">
								<Val>UH1双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm11" desc="UH2双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_UH2]"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_UH2]">
								<Val>UH2双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm12" desc="IL1双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_IL1]"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_IL1]">
								<Val>IL1双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm13" desc="IL2双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_IL2]"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_IL2]">
								<Val>IL2双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm14" desc="UL1双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_UL1]"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_UL1]">
								<Val>UL1双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm15" desc="UL2双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_UL2]"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_UL2]">
								<Val>UL2双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm16" desc="IQ1双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_IQ1]"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_IQ1]">
								<Val>IQ1双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm17" desc="IQ2双AD不一致">
							<DAI name="stVal" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_IQ2]"/>
							<DAI name="dU" sAddr="B02.CNST_bztPub.AdDiffAct[ADIFF_IQ2]">
								<Val>IQ2双AD不一致</Val>
							</DAI>
						</DOI>
						<DOI name="Alm18" desc="SG插件光口1发送光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_form_warning_00"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_form_warning_00">
								<Val>SG插件光口1发送光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm19" desc="SG插件光口2发送光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_form_warning_01"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_form_warning_01">
								<Val>SG插件光口2发送光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm20" desc="SG插件光口3发送光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_form_warning_02"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_form_warning_02">
								<Val>SG插件光口3发送光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm21" desc="SG插件光口4发送光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_form_warning_03"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_form_warning_03">
								<Val>SG插件光口4发送光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm22" desc="SG插件光口5发送光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_form_warning_04"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_form_warning_04">
								<Val>SG插件光口5发送光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm23" desc="SG插件光口6发送光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_form_warning_05"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_form_warning_05">
								<Val>SG插件光口6发送光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm24" desc="SG插件光口7发送光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_form_warning_06"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_form_warning_06">
								<Val>SG插件光口7发送光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm25" desc="SG插件光口8发送光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_form_warning_07"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_form_warning_07">
								<Val>SG插件光口8发送光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm26" desc="GOS插件光口1发送光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_form_warning_08"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_form_warning_08">
								<Val>GOS插件光口1发送光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm27" desc="GOS插件光口2发送光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_form_warning_09"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_form_warning_09">
								<Val>GOS插件光口2发送光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm28" desc="GOS插件光口3发送光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_form_warning_10"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_form_warning_10">
								<Val>GOS插件光口3发送光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm29" desc="GOS插件光口4发送光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_form_warning_11"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_form_warning_11">
								<Val>GOS插件光口4发送光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm30" desc="GOS插件光口5发送光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_form_warning_12"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_form_warning_12">
								<Val>GOS插件光口5发送光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm31" desc="GOS插件光口6发送光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_form_warning_13"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_form_warning_13">
								<Val>GOS插件光口6发送光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm32" desc="GOS插件光口7发送光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_form_warning_14"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_form_warning_14">
								<Val>GOS插件光口7发送光功率越下限</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="Warn" lnClass="GGIO" lnType="2_GDNR_ALM_32_GGIO_NSR-3641A-DA-G" inst="3" desc="自检信号3">
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
						<DOI name="Alm1" desc="GOS插件光口8发送光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_form_warning_15"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_form_warning_15">
								<Val>GOS插件光口8发送光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm2" desc="SG插件光口1接收光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_form_warning_00"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_form_warning_00">
								<Val>SG插件光口1接收光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm3" desc="SG插件光口2接收光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_form_warning_01"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_form_warning_01">
								<Val>SG插件光口2接收光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm4" desc="SG插件光口3接收光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_form_warning_02"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_form_warning_02">
								<Val>SG插件光口3接收光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm5" desc="SG插件光口4接收光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_form_warning_03"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_form_warning_03">
								<Val>SG插件光口4接收光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm6" desc="SG插件光口5接收光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_form_warning_04"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_form_warning_04">
								<Val>SG插件光口5接收光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm7" desc="SG插件光口6接收光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_form_warning_05"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_form_warning_05">
								<Val>SG插件光口6接收光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm8" desc="SG插件光口7接收光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_form_warning_06"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_form_warning_06">
								<Val>SG插件光口7接收光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm9" desc="SG插件光口8接收光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_form_warning_07"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_form_warning_07">
								<Val>SG插件光口8接收光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm10" desc="GOS插件光口1接收光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_form_warning_08"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_form_warning_08">
								<Val>GOS插件光口1接收光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm11" desc="GOS插件光口2接收光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_form_warning_09"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_form_warning_09">
								<Val>GOS插件光口2接收光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm12" desc="GOS插件光口3接收光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_form_warning_10"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_form_warning_10">
								<Val>GOS插件光口3接收光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm13" desc="GOS插件光口4接收光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_form_warning_11"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_form_warning_11">
								<Val>GOS插件光口4接收光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm14" desc="GOS插件光口5接收光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_form_warning_12"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_form_warning_12">
								<Val>GOS插件光口5接收光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm15" desc="GOS插件光口6接收光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_form_warning_13"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_form_warning_13">
								<Val>GOS插件光口6接收光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm16" desc="GOS插件光口7接收光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_form_warning_14"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_form_warning_14">
								<Val>GOS插件光口7接收光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm17" desc="GOS插件光口8接收光功率越下限">
							<DAI name="stVal" sAddr="B01.master.eth_rx_form_warning_15"/>
							<DAI name="dU" sAddr="B01.master.eth_rx_form_warning_15">
								<Val>GOS插件光口8接收光功率越下限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm18" desc="SG插件光口1发送光功率越上限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_ready_warning_00"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_ready_warning_00">
								<Val>SG插件光口1发送光功率越上限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm19" desc="SG插件光口2发送光功率越上限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_ready_warning_01"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_ready_warning_01">
								<Val>SG插件光口2发送光功率越上限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm20" desc="SG插件光口3发送光功率越上限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_ready_warning_02"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_ready_warning_02">
								<Val>SG插件光口3发送光功率越上限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm21" desc="SG插件光口4发送光功率越上限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_ready_warning_03"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_ready_warning_03">
								<Val>SG插件光口4发送光功率越上限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm22" desc="SG插件光口5发送光功率越上限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_ready_warning_04"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_ready_warning_04">
								<Val>SG插件光口5发送光功率越上限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm23" desc="SG插件光口6发送光功率越上限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_ready_warning_05"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_ready_warning_05">
								<Val>SG插件光口6发送光功率越上限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm24" desc="SG插件光口7发送光功率越上限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_ready_warning_06"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_ready_warning_06">
								<Val>SG插件光口7发送光功率越上限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm25" desc="SG插件光口8发送光功率越上限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_ready_warning_07"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_ready_warning_07">
								<Val>SG插件光口8发送光功率越上限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm26" desc="GOS插件光口1发送光功率越上限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_ready_warning_08"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_ready_warning_08">
								<Val>GOS插件光口1发送光功率越上限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm27" desc="GOS插件光口2发送光功率越上限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_ready_warning_09"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_ready_warning_09">
								<Val>GOS插件光口2发送光功率越上限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm28" desc="GOS插件光口3发送光功率越上限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_ready_warning_10"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_ready_warning_10">
								<Val>GOS插件光口3发送光功率越上限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm29" desc="GOS插件光口4发送光功率越上限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_ready_warning_11"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_ready_warning_11">
								<Val>GOS插件光口4发送光功率越上限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm30" desc="GOS插件光口5发送光功率越上限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_ready_warning_12"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_ready_warning_12">
								<Val>GOS插件光口5发送光功率越上限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm31" desc="GOS插件光口6发送光功率越上限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_ready_warning_13"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_ready_warning_13">
								<Val>GOS插件光口6发送光功率越上限</Val>
							</DAI>
						</DOI>
						<DOI name="Alm32" desc="GOS插件光口7发送光功率越上限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_ready_warning_14"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_ready_warning_14">
								<Val>GOS插件光口7发送光功率越上限</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="Warn" lnClass="GGIO" lnType="2_GDNR_ALM_32_GGIO_NSR-3641A-DA-G" inst="4" desc="自检信号4">
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
						<DOI name="Alm1" desc="GOS插件光口8发送光功率越上限">
							<DAI name="stVal" sAddr="B01.master.eth_tx_ready_warning_15"/>
							<DAI name="dU" sAddr="B01.master.eth_tx_ready_warning_15">
								<Val>GOS插件光口8发送光功率越上限</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="SVAlm" lnClass="GGIO" lnType="2_GDNR_EVE_GGIO_NSR-3641A-DA-G" inst="1" desc="SV告警信号1">
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
						<DOI name="Alm1" desc="MU名称1SV采样接收超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[0]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[0]">
								<Val>MU名称1SV采样接收超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm2" desc="MU名称1SV链路接收中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[0]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[0]">
								<Val>MU名称1SV链路接收中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm3" desc="MU名称1SV配置错误">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[0]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[0]">
								<Val>MU名称1SV配置错误</Val>
							</DAI>
						</DOI>
						<DOI name="Alm4" desc="MU名称1SV采样抖动超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[0]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[0]">
								<Val>MU名称1SV采样抖动超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm5" desc="MU名称1MU额定延时异常">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[0]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[0]">
								<Val>MU名称1MU额定延时异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm6" desc="MU名称2SV采样接收超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[1]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[1]">
								<Val>MU名称2SV采样接收超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm7" desc="MU名称2SV链路接收中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[1]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[1]">
								<Val>MU名称2SV链路接收中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm8" desc="MU名称2SV配置错误">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[1]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[1]">
								<Val>MU名称2SV配置错误</Val>
							</DAI>
						</DOI>
						<DOI name="Alm9" desc="MU名称2SV采样抖动超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[1]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[1]">
								<Val>MU名称2SV采样抖动超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm10" desc="MU名称2MU额定延时异常">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[1]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[1]">
								<Val>MU名称2MU额定延时异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm11" desc="MU名称3SV采样接收超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[2]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[2]">
								<Val>MU名称3SV采样接收超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm12" desc="MU名称3SV链路接收中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[2]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[2]">
								<Val>MU名称3SV链路接收中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm13" desc="MU名称3SV配置错误">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[2]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[2]">
								<Val>MU名称3SV配置错误</Val>
							</DAI>
						</DOI>
						<DOI name="Alm14" desc="MU名称3SV采样抖动超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[2]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[2]">
								<Val>MU名称3SV采样抖动超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm15" desc="MU名称3MU额定延时异常">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[2]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[2]">
								<Val>MU名称3MU额定延时异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm16" desc="MU名称4SV采样接收超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[3]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[3]">
								<Val>MU名称4SV采样接收超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm17" desc="MU名称4SV链路接收中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[3]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[3]">
								<Val>MU名称4SV链路接收中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm18" desc="MU名称4SV配置错误">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[3]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[3]">
								<Val>MU名称4SV配置错误</Val>
							</DAI>
						</DOI>
						<DOI name="Alm19" desc="MU名称4SV采样抖动超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[3]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[3]">
								<Val>MU名称4SV采样抖动超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm20" desc="MU名称4MU额定延时异常">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[3]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[3]">
								<Val>MU名称4MU额定延时异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm21" desc="MU名称5SV采样接收超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[4]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[4]">
								<Val>MU名称5SV采样接收超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm22" desc="MU名称5SV链路接收中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[4]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[4]">
								<Val>MU名称5SV链路接收中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm23" desc="MU名称5SV配置错误">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[4]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[4]">
								<Val>MU名称5SV配置错误</Val>
							</DAI>
						</DOI>
						<DOI name="Alm24" desc="MU名称5SV采样抖动超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[4]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[4]">
								<Val>MU名称5SV采样抖动超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm25" desc="MU名称5MU额定延时异常">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[4]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[4]">
								<Val>MU名称5MU额定延时异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm26" desc="MU名称6SV采样接收超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[5]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[5]">
								<Val>MU名称6SV采样接收超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm27" desc="MU名称6SV链路接收中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[5]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[5]">
								<Val>MU名称6SV链路接收中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm28" desc="MU名称6SV配置错误">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[5]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[5]">
								<Val>MU名称6SV配置错误</Val>
							</DAI>
						</DOI>
						<DOI name="Alm29" desc="MU名称6SV采样抖动超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[5]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[5]">
								<Val>MU名称6SV采样抖动超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm30" desc="MU名称6MU额定延时异常">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[5]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[5]">
								<Val>MU名称6MU额定延时异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm31" desc="MU名称7SV采样接收超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[6]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[6]">
								<Val>MU名称7SV采样接收超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm32" desc="MU名称7SV链路接收中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[6]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[6]">
								<Val>MU名称7SV链路接收中断</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="SVAlm" lnClass="GGIO" lnType="2_GDNR_EVE_GGIO_NSR-3641A-DA-G" inst="2" desc="SV告警信号2">
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
						<DOI name="Alm1" desc="MU名称7SV配置错误">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[6]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[6]">
								<Val>MU名称7SV配置错误</Val>
							</DAI>
						</DOI>
						<DOI name="Alm2" desc="MU名称7SV采样抖动超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[6]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[6]">
								<Val>MU名称7SV采样抖动超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm3" desc="MU名称7MU额定延时异常">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[6]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[6]">
								<Val>MU名称7MU额定延时异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm4" desc="MU名称8SV采样接收超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[7]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[7]">
								<Val>MU名称8SV采样接收超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm5" desc="MU名称8SV链路接收中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[7]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[7]">
								<Val>MU名称8SV链路接收中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm6" desc="MU名称8SV配置错误">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[7]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[7]">
								<Val>MU名称8SV配置错误</Val>
							</DAI>
						</DOI>
						<DOI name="Alm7" desc="MU名称8SV采样抖动超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[7]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[7]">
								<Val>MU名称8SV采样抖动超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm8" desc="MU名称8MU额定延时异常">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[7]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[7]">
								<Val>MU名称8MU额定延时异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm9" desc="MU名称9SV采样接收超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[8]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[8]">
								<Val>MU名称9SV采样接收超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm10" desc="MU名称9SV链路接收中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[8]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[8]">
								<Val>MU名称9SV链路接收中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm11" desc="MU名称9SV配置错误">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[8]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[8]">
								<Val>MU名称9SV配置错误</Val>
							</DAI>
						</DOI>
						<DOI name="Alm12" desc="MU名称9SV采样抖动超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[8]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[8]">
								<Val>MU名称9SV采样抖动超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm13" desc="MU名称9MU额定延时异常">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[8]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[8]">
								<Val>MU名称9MU额定延时异常</Val>
							</DAI>
						</DOI>
						<DOI name="Alm14" desc="MU名称10SV采样接收超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[9]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_overtime_err[9]">
								<Val>MU名称10SV采样接收超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm15" desc="MU名称10SV链路接收中断">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[9]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_com_err[9]">
								<Val>MU名称10SV链路接收中断</Val>
							</DAI>
						</DOI>
						<DOI name="Alm16" desc="MU名称10SV配置错误">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[9]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_cfg_err[9]">
								<Val>MU名称10SV配置错误</Val>
							</DAI>
						</DOI>
						<DOI name="Alm17" desc="MU名称10SV采样抖动超时">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[9]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_mess_shark_10us[9]">
								<Val>MU名称10SV采样抖动超时</Val>
							</DAI>
						</DOI>
						<DOI name="Alm18" desc="MU名称10MU额定延时异常">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[9]"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.sv_svcb_recv_time_delay[9]">
								<Val>MU名称10MU额定延时异常</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="DSta" lnClass="GGIO" lnType="2_GDNR_IND_8_GGIO_NSR-3641A-DA-G" inst="1" desc="装置运行状态信号1">
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
						<DOI name="Ind1" desc="运行">
							<DAI name="stVal" sAddr="B01.master.device_run_led_state"/>
							<DAI name="dU" sAddr="B01.master.device_run_led_state">
								<Val>运行</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="异常">
							<DAI name="stVal" sAddr="B01.master.device_alm_led_state"/>
							<DAI name="dU" sAddr="B01.master.device_alm_led_state">
								<Val>异常</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="检修状态硬压板">
							<DAI name="stVal" sAddr="B02.CNST_YX.singleYxValue[3]"/>
							<DAI name="dU" sAddr="B02.CNST_YX.singleYxValue[3]">
								<Val>检修状态硬压板</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="跳闸">
							<DAI name="stVal" sAddr="B02.CNST_BO.actBtOutPutBOOL"/>
							<DAI name="dU" sAddr="B02.CNST_BO.actBtOutPutBOOL">
								<Val>跳闸</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="合闸">
							<DAI name="stVal" sAddr="B02.CNST_BO.actBhOutPutBOOL"/>
							<DAI name="dU" sAddr="B02.CNST_BO.actBhOutPutBOOL">
								<Val>合闸</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="充电完成">
							<DAI name="stVal" sAddr="B02.CNST_GeneralSetting.bztAllow"/>
							<DAI name="dU" sAddr="B02.CNST_GeneralSetting.bztAllow">
								<Val>充电完成</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice inst="RCD" desc="录波">
					<LN0 lnClass="LLN0" lnType="2_GDNR_V2_LLN0_NSR-3641A-DA-G" inst="" desc="线电压">
						<DataSet name="dsRelayRec" desc="保护故障报告信息">
							<FCDA ldInst="RCD" lnClass="RDRE" lnInst="1" doName="RcdMade" fc="ST"/>
							<FCDA ldInst="RCD" lnClass="RDRE" lnInst="1" doName="FltNum" fc="ST"/>
						</DataSet>
						<ReportControl name="brcbRelayRec" datSet="dsRelayRec" intgPd="300000" rptID="" confRev="1" buffered="true" bufTime="0">
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
						<DOI name="Health" desc="健康">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="逻辑节点铭牌">
							<DAI name="vendor">
								<Val>naritech</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>逻辑节点铭牌</Val>
							</DAI>
							<DAI name="configRev">
								<Val>V1.22</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2003</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="LPHD" lnType="2_GDNR_V2_LPHD_NSR-3641A-DA-G" inst="1" desc="物理设备">
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
					<LN lnClass="RDRE" lnType="2_GDNR_BASIC_V1_RDRE_NSR-3641A-DA-G" inst="1" desc="录波节点">
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
								<Val>V1.22</Val>
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
				<LDevice inst="CTRL" desc="信号与控制">
					<LN0 lnClass="LLN0" lnType="2_GDNR_V2_LLN0_NSR-3641A-DA-G" inst="" desc="LLN0">
						<DataSet name="dsGOOSE1" desc="站控层GOOSE">
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind3" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind6" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind7" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind12" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind13" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind14" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind15" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind16" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind17" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind18" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind19" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind20" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind21" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind22" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind23" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind24" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind25" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind26" daName="stVal" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind27" daName="stVal" fc="ST"/>
						</DataSet>
						<DataSet name="dsDin" desc="遥信数据集">
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind4" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind5" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind6" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind7" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind8" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind9" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind10" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind11" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind12" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind13" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind14" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind15" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind16" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind17" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind18" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind19" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind20" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind21" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind22" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind23" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind24" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind25" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind26" fc="ST"/>
							<FCDA ldInst="CTRL" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind27" fc="ST"/>
						</DataSet>
						<ReportControl name="brcbDin" datSet="dsDin" intgPd="300000" rptID="" confRev="1" buffered="true" bufTime="0">
							<TrgOps dchg="true" qchg="false" dupd="false" period="true"/>
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>逻辑节点铭牌</Val>
							</DAI>
							<DAI name="configRev">
								<Val>V1.22</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC61850-7-4:2003</Val>
							</DAI>
						</DOI>
						<GSEControl name="gocb1" datSet="dsGOOSE1" confRev="1" type="GOOSE" appID="NS3642CTRL/LLN0$GO$gocb1"/>
					</LN0>
					<LN lnClass="LPHD" lnType="2_GDNR_V2_LPHD_NSR-3641A-DA-G" inst="1" desc="装置物理信息">
						<DOI name="PhyNam" desc="物理装置铭牌">
							<DAI name="serNum">
								<Val>GDNR 03010026860014310100010001432007500001</Val>
							</DAI>
						</DOI>
						<DOI name="PhyHealth" desc="物理装置健康状况"/>
						<DOI name="Proxy" desc="是否为代理">
							<DAI name="dU">
								<Val>是否为代理</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOOUT" lnClass="GGIO" lnType="2_GDNR_SPS_64_GGIO_NSR-3641A-DA-G" inst="1" desc="GOOSE输出">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="跳电源1高断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[0]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[0]">
								<Val>跳电源1高断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="跳电源1断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[1]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[1]">
								<Val>跳电源1断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="跳电源2高断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[2]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[2]">
								<Val>跳电源2高断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="跳电源2断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[3]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[3]">
								<Val>跳电源2断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="跳分段断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[4]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[4]">
								<Val>跳分段断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="合电源1高断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[5]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[5]">
								<Val>合电源1高断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="合电源1断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[6]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[6]">
								<Val>合电源1断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="合电源2高断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[7]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[7]">
								<Val>合电源2高断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind9" desc="合电源2断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[8]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[8]">
								<Val>合电源2断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind10" desc="合分段断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[9]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[9]">
								<Val>合分段断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind11" desc="跳闸出口1">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[10]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[10]">
								<Val>跳闸出口1</Val>
							</DAI>
						</DOI>
						<DOI name="Ind12" desc="跳闸出口2">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[11]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[11]">
								<Val>跳闸出口2</Val>
							</DAI>
						</DOI>
						<DOI name="Ind13" desc="跳闸出口3">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[12]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[12]">
								<Val>跳闸出口3</Val>
							</DAI>
						</DOI>
						<DOI name="Ind14" desc="跳闸出口4">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[13]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[13]">
								<Val>跳闸出口4</Val>
							</DAI>
						</DOI>
						<DOI name="Ind15" desc="跳闸出口5">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[14]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[14]">
								<Val>跳闸出口5</Val>
							</DAI>
						</DOI>
						<DOI name="Ind16" desc="跳闸出口6">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[15]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[15]">
								<Val>跳闸出口6</Val>
							</DAI>
						</DOI>
						<DOI name="Ind17" desc="跳闸出口7">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[16]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[16]">
								<Val>跳闸出口7</Val>
							</DAI>
						</DOI>
						<DOI name="Ind18" desc="跳闸出口8">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[17]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[17]">
								<Val>跳闸出口8</Val>
							</DAI>
						</DOI>
						<DOI name="Ind19" desc="跳闸出口9">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[18]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[18]">
								<Val>跳闸出口9</Val>
							</DAI>
						</DOI>
						<DOI name="Ind20" desc="跳闸出口10">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[19]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[19]">
								<Val>跳闸出口10</Val>
							</DAI>
						</DOI>
						<DOI name="Ind21" desc="跳闸出口11">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[20]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[20]">
								<Val>跳闸出口11</Val>
							</DAI>
						</DOI>
						<DOI name="Ind22" desc="跳闸出口12">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[21]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[21]">
								<Val>跳闸出口12</Val>
							</DAI>
						</DOI>
						<DOI name="Ind23" desc="跳闸出口13">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[22]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[22]">
								<Val>跳闸出口13</Val>
							</DAI>
						</DOI>
						<DOI name="Ind24" desc="跳闸出口14">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[23]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[23]">
								<Val>跳闸出口14</Val>
							</DAI>
						</DOI>
						<DOI name="Ind25" desc="跳闸出口15">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[24]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[24]">
								<Val>跳闸出口15</Val>
							</DAI>
						</DOI>
						<DOI name="Ind26" desc="跳闸出口16">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[25]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[25]">
								<Val>跳闸出口16</Val>
							</DAI>
						</DOI>
						<DOI name="Ind27" desc="备自投动作">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[26]"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[26]">
								<Val>备自投动作</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
			</Server>
		</AccessPoint>
		<AccessPoint name="G1">
			<Server>
				<Authentication/>
				<LDevice inst="PIGO" desc="过程层GOOSE">
					<LN0 lnClass="LLN0" lnType="2_GDNR_V2_LLN0_NSR-3641A-DA-G" inst="" desc="逻辑节点0">
						<DataSet name="dsGOOSE1" desc="GOOSE输出">
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind1" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind2" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind3" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind4" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind5" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind6" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind7" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind8" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind9" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind10" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind11" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind12" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind13" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind14" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind15" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind16" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind17" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind18" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind19" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind20" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind21" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind22" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind23" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind24" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind25" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind26" daName="stVal" fc="ST"/>
							<FCDA ldInst="PIGO" prefix="GOOUT" lnClass="GGIO" lnInst="1" doName="Ind27" daName="stVal" fc="ST"/>
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>逻辑节点铭牌</Val>
							</DAI>
							<DAI name="configRev">
								<Val>V1.22</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2003</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef iedName="ZD" ldInst="RPIT" prefix="ProtIn" lnClass="GGIO" lnInst="3" doName="Ind3" daName="stVal" intAddr="PIGO/GOINGGIO1.Ind1.stVal"/>
							<ExtRef iedName="ZD" ldInst="RPIT" prefix="ProtIn" lnClass="GGIO" lnInst="3" doName="Ind5" daName="stVal" intAddr="PIGO/GOINGGIO1.Ind2.stVal"/>
							<ExtRef iedName="ZD" ldInst="RPIT" prefix="ProtIn" lnClass="GGIO" lnInst="3" doName="Ind4" daName="stVal" intAddr="PIGO/GOINGGIO1.Ind3.stVal"/>
							<ExtRef iedName="ZD" ldInst="RPIT" prefix="ProtIn" lnClass="GGIO" lnInst="3" doName="Ind2" daName="stVal" intAddr="PIGO/GOINGGIO1.Ind45.stVal"/>
							<ExtRef iedName="ZD" ldInst="RPIT" prefix="ProtIn" lnClass="GGIO" lnInst="3" doName="Ind1" daName="stVal" intAddr="PIGO/GOINGGIO1.Ind53.stVal"/>
							<ExtRef iedName="ZD" ldInst="RPIT" prefix="BinIn" lnClass="GGIO" lnInst="3" doName="Ind11" daName="stVal" intAddr="PIGO/GOINGGIO1.Ind61.stVal"/>
							<ExtRef iedName="ZD" ldInst="RPIT" prefix="Q0" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal" intAddr="PIGO/GOINGGIO3.DPCSO1.stVal"/>
							<ExtRef iedName="ZD" ldInst="RPIT" prefix="Q0A" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal" intAddr="PIGO/GOINGGIO3.DPCSO2.stVal"/>
							<ExtRef iedName="ZD" ldInst="RPIT" prefix="Q0B" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal" intAddr="PIGO/GOINGGIO3.DPCSO3.stVal"/>
						</Inputs>
						<GSEControl name="gocb1" datSet="dsGOOSE1" confRev="1" type="GOOSE" appID="NS3642PIGO$LLN0$GO$gocb1"/>
					</LN0>
					<LN lnClass="LPHD" lnType="2_GDNR_V2_LPHD_NSR-3641A-DA-G" inst="1" desc="物理装置信息">
						<DOI name="PhyNam" desc="物理装置铭牌"/>
						<DOI name="PhyHealth" desc="物理装置健康状况"/>
						<DOI name="Proxy" desc="是否为代理">
							<DAI name="dU">
								<Val>是否为代理</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOIN" lnClass="GGIO" lnType="2_GDNR_SPS_64_GGIO_NSR-3641A-DA-G" inst="1" desc="GOOSE单点输入">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="电源1合后位置">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[0]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[0]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[0]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[0]">
								<Val>电源1合后位置</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="电源2合后位置">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[1]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[1]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[1]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[1]">
								<Val>电源2合后位置</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="分段合后位置">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[2]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[2]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[2]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[2]">
								<Val>分段合后位置</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="遥信开入04">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[3]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[3]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[3]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[3]">
								<Val>遥信开入04</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="遥信开入05">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[4]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[4]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[4]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[4]">
								<Val>遥信开入05</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="遥信开入06">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[5]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[5]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[5]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[5]">
								<Val>遥信开入06</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="遥信开入07">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[6]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[6]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[6]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[6]">
								<Val>遥信开入07</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="遥信开入08">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[7]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[7]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[7]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[7]">
								<Val>遥信开入08</Val>
							</DAI>
						</DOI>
						<DOI name="Ind9" desc="遥信开入09">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[8]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[8]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[8]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[8]">
								<Val>遥信开入09</Val>
							</DAI>
						</DOI>
						<DOI name="Ind10" desc="遥信开入10">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[9]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[9]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[9]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[9]">
								<Val>遥信开入10</Val>
							</DAI>
						</DOI>
						<DOI name="Ind11" desc="遥信开入11">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[10]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[10]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[10]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[10]">
								<Val>遥信开入11</Val>
							</DAI>
						</DOI>
						<DOI name="Ind12" desc="遥信开入12">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[11]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[11]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[11]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[11]">
								<Val>遥信开入12</Val>
							</DAI>
						</DOI>
						<DOI name="Ind13" desc="遥信开入13">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[12]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[12]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[12]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[12]">
								<Val>遥信开入13</Val>
							</DAI>
						</DOI>
						<DOI name="Ind14" desc="遥信开入14">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[13]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[13]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[13]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[13]">
								<Val>遥信开入14</Val>
							</DAI>
						</DOI>
						<DOI name="Ind15" desc="遥信开入15">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[14]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[14]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[14]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[14]">
								<Val>遥信开入15</Val>
							</DAI>
						</DOI>
						<DOI name="Ind16" desc="遥信开入16">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[15]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[15]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[15]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[15]">
								<Val>遥信开入16</Val>
							</DAI>
						</DOI>
						<DOI name="Ind17" desc="遥信开入17">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[16]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[16]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[16]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[16]">
								<Val>遥信开入17</Val>
							</DAI>
						</DOI>
						<DOI name="Ind18" desc="遥信开入18">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[17]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[17]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[17]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[17]">
								<Val>遥信开入18</Val>
							</DAI>
						</DOI>
						<DOI name="Ind19" desc="遥信开入19">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[18]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[18]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[18]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[18]">
								<Val>遥信开入19</Val>
							</DAI>
						</DOI>
						<DOI name="Ind20" desc="遥信开入20">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[19]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[19]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[19]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[19]">
								<Val>遥信开入20</Val>
							</DAI>
						</DOI>
						<DOI name="Ind21" desc="遥信开入21">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[20]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[20]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[20]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[20]">
								<Val>遥信开入21</Val>
							</DAI>
						</DOI>
						<DOI name="Ind22" desc="遥信开入22">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[21]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[21]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[21]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[21]">
								<Val>遥信开入22</Val>
							</DAI>
						</DOI>
						<DOI name="Ind23" desc="遥信开入23">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[22]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[22]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[22]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[22]">
								<Val>遥信开入23</Val>
							</DAI>
						</DOI>
						<DOI name="Ind24" desc="遥信开入24">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[23]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[23]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[23]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[23]">
								<Val>遥信开入24</Val>
							</DAI>
						</DOI>
						<DOI name="Ind25" desc="遥信开入25">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[24]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[24]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[24]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[24]">
								<Val>遥信开入25</Val>
							</DAI>
						</DOI>
						<DOI name="Ind26" desc="遥信开入26">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[25]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[25]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[25]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[25]">
								<Val>遥信开入26</Val>
							</DAI>
						</DOI>
						<DOI name="Ind27" desc="遥信开入27">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[26]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[26]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[26]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[26]">
								<Val>遥信开入27</Val>
							</DAI>
						</DOI>
						<DOI name="Ind28" desc="遥信开入28">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[27]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[27]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[27]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[27]">
								<Val>遥信开入28</Val>
							</DAI>
						</DOI>
						<DOI name="Ind29" desc="遥信开入29">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[28]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[28]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[28]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[28]">
								<Val>遥信开入29</Val>
							</DAI>
						</DOI>
						<DOI name="Ind30" desc="遥信开入30">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[29]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[29]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[29]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[29]">
								<Val>遥信开入30</Val>
							</DAI>
						</DOI>
						<DOI name="Ind31" desc="遥信开入31">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[30]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[30]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[30]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[30]">
								<Val>遥信开入31</Val>
							</DAI>
						</DOI>
						<DOI name="Ind32" desc="遥信开入32">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[31]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[31]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[31]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[31]">
								<Val>遥信开入32</Val>
							</DAI>
						</DOI>
						<DOI name="Ind33" desc="遥信开入33">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[32]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[32]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[32]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[32]">
								<Val>遥信开入33</Val>
							</DAI>
						</DOI>
						<DOI name="Ind34" desc="遥信开入34">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[33]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[33]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[33]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[33]">
								<Val>遥信开入34</Val>
							</DAI>
						</DOI>
						<DOI name="Ind35" desc="遥信开入35">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[34]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[34]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[34]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[34]">
								<Val>遥信开入35</Val>
							</DAI>
						</DOI>
						<DOI name="Ind36" desc="遥信开入36">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[35]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[35]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[35]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[35]">
								<Val>遥信开入36</Val>
							</DAI>
						</DOI>
						<DOI name="Ind37" desc="遥信开入37">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[36]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[36]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[36]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[36]">
								<Val>遥信开入37</Val>
							</DAI>
						</DOI>
						<DOI name="Ind38" desc="遥信开入38">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[37]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[37]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[37]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[37]">
								<Val>遥信开入38</Val>
							</DAI>
						</DOI>
						<DOI name="Ind39" desc="遥信开入39">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[38]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[38]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[38]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[38]">
								<Val>遥信开入39</Val>
							</DAI>
						</DOI>
						<DOI name="Ind40" desc="遥信开入40">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[39]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[39]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[39]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[39]">
								<Val>遥信开入40</Val>
							</DAI>
						</DOI>
						<DOI name="Ind41" desc="遥信开入41">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[40]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[40]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[40]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[40]">
								<Val>遥信开入41</Val>
							</DAI>
						</DOI>
						<DOI name="Ind42" desc="遥信开入42">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[41]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[41]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[41]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[41]">
								<Val>遥信开入42</Val>
							</DAI>
						</DOI>
						<DOI name="Ind43" desc="遥信开入43">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[42]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[42]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[42]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[42]">
								<Val>遥信开入43</Val>
							</DAI>
						</DOI>
						<DOI name="Ind44" desc="遥信开入44">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[43]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[43]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[43]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pSingleYx[43]">
								<Val>遥信开入44</Val>
							</DAI>
						</DOI>
						<DOI name="Ind45" desc="P层接收备自投总闭锁1">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[0]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[0]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[0]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[0]">
								<Val>P层接收备自投总闭锁1</Val>
							</DAI>
						</DOI>
						<DOI name="Ind46" desc="P层接收备自投总闭锁2">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[1]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[1]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[1]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[1]">
								<Val>P层接收备自投总闭锁2</Val>
							</DAI>
						</DOI>
						<DOI name="Ind47" desc="P层接收备自投总闭锁3">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[2]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[2]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[2]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[2]">
								<Val>P层接收备自投总闭锁3</Val>
							</DAI>
						</DOI>
						<DOI name="Ind48" desc="P层接收备自投总闭锁4">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[3]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[3]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[3]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[3]">
								<Val>P层接收备自投总闭锁4</Val>
							</DAI>
						</DOI>
						<DOI name="Ind49" desc="P层接收备自投总闭锁5">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[4]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[4]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[4]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[4]">
								<Val>P层接收备自投总闭锁5</Val>
							</DAI>
						</DOI>
						<DOI name="Ind50" desc="P层接收备自投总闭锁6">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[5]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[5]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[5]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[5]">
								<Val>P层接收备自投总闭锁6</Val>
							</DAI>
						</DOI>
						<DOI name="Ind51" desc="P层接收备自投总闭锁7">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[6]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[6]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[6]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[6]">
								<Val>P层接收备自投总闭锁7</Val>
							</DAI>
						</DOI>
						<DOI name="Ind52" desc="P层接收备自投总闭锁8">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[7]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[7]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[7]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[7]">
								<Val>P层接收备自投总闭锁8</Val>
							</DAI>
						</DOI>
						<DOI name="Ind53" desc="P层接收1#变保护动作1">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[8]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[8]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[8]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[8]">
								<Val>P层接收1#变保护动作1</Val>
							</DAI>
						</DOI>
						<DOI name="Ind54" desc="P层接收1#变保护动作2">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[9]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[9]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[9]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[9]">
								<Val>P层接收1#变保护动作2</Val>
							</DAI>
						</DOI>
						<DOI name="Ind55" desc="P层接收1#变保护动作3">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[10]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[10]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[10]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[10]">
								<Val>P层接收1#变保护动作3</Val>
							</DAI>
						</DOI>
						<DOI name="Ind56" desc="P层接收1#变保护动作4">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[11]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[11]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[11]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[11]">
								<Val>P层接收1#变保护动作4</Val>
							</DAI>
						</DOI>
						<DOI name="Ind57" desc="P层接收1#变保护动作5">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[12]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[12]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[12]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[12]">
								<Val>P层接收1#变保护动作5</Val>
							</DAI>
						</DOI>
						<DOI name="Ind58" desc="P层接收1#变保护动作6">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[13]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[13]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[13]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[13]">
								<Val>P层接收1#变保护动作6</Val>
							</DAI>
						</DOI>
						<DOI name="Ind59" desc="P层接收1#变保护动作7">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[14]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[14]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[14]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[14]">
								<Val>P层接收1#变保护动作7</Val>
							</DAI>
						</DOI>
						<DOI name="Ind60" desc="P层接收1#变保护动作8">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[15]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[15]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[15]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[15]">
								<Val>P层接收1#变保护动作8</Val>
							</DAI>
						</DOI>
						<DOI name="Ind61" desc="P层接收2#变保护动作1">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[16]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[16]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[16]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[16]">
								<Val>P层接收2#变保护动作1</Val>
							</DAI>
						</DOI>
						<DOI name="Ind62" desc="P层接收2#变保护动作2">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[17]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[17]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[17]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[17]">
								<Val>P层接收2#变保护动作2</Val>
							</DAI>
						</DOI>
						<DOI name="Ind63" desc="P层接收2#变保护动作3">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[18]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[18]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[18]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[18]">
								<Val>P层接收2#变保护动作3</Val>
							</DAI>
						</DOI>
						<DOI name="Ind64" desc="P层接收2#变保护动作4">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[19]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[19]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[19]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[19]">
								<Val>P层接收2#变保护动作4</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOIN" lnClass="GGIO" lnType="2_GDNR_SPS_64_GGIO_NSR-3641A-DA-G" inst="2" desc="GOOSE单点输入">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="P层接收2#变保护动作5">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[20]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[20]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[20]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[20]">
								<Val>P层接收2#变保护动作5</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="P层接收2#变保护动作6">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[21]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[21]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[21]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[21]">
								<Val>P层接收2#变保护动作6</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="P层接收2#变保护动作7">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[22]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[22]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[22]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[22]">
								<Val>P层接收2#变保护动作7</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="P层接收2#变保护动作8">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[23]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[23]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[23]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pBsProcessYx[23]">
								<Val>P层接收2#变保护动作8</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOIN" lnClass="GGIO" lnType="2_GDNR_DPS_8_GGIO_NSR-3641A-DA-G" inst="3" desc="GOOSE接收双遥信">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO1" desc="电源1位置">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[0]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[0]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[0]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[0]">
								<Val>电源1位置</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO2" desc="电源2位置">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[1]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[1]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[1]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[1]">
								<Val>电源2位置</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO3" desc="分段位置">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[2]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[2]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[2]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[2]">
								<Val>分段位置</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO4" desc="接收双位置遥信4">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[3]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[3]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[3]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[3]">
								<Val>接收双位置遥信4</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO5" desc="接收双位置遥信5">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[4]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[4]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[4]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[4]">
								<Val>接收双位置遥信5</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO6" desc="接收双位置遥信6">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[5]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[5]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[5]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[5]">
								<Val>接收双位置遥信6</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO7" desc="接收双位置遥信7">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[6]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[6]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[6]_time"/>
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[6]">
								<Val>接收双位置遥信7</Val>
							</DAI>
						</DOI>
						<DOI name="DPCSO8" desc="接收双位置遥信8">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[7]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[7]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[7]_time"/>
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pTwinsProcessYx[7]">
								<Val>接收双位置遥信8</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOIN" lnClass="GGIO" lnType="2_GDNR_SPS_64_GGIO_NSR-3641A-DA-G" inst="4" desc="GOOSE接收控制量">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="P层接收跳闸1">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[0]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[0]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[0]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[0]">
								<Val>P层接收跳闸1</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="P层接收跳闸2">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[1]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[1]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[1]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[1]">
								<Val>P层接收跳闸2</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="P层接收跳闸3">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[2]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[2]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[2]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[2]">
								<Val>P层接收跳闸3</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="P层接收跳闸4">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[3]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[3]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[3]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[3]">
								<Val>P层接收跳闸4</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="P层接收跳闸5">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[4]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[4]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[4]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[4]">
								<Val>P层接收跳闸5</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="P层接收跳闸6">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[5]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[5]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[5]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[5]">
								<Val>P层接收跳闸6</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="P层接收跳闸7">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[6]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[6]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[6]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[6]">
								<Val>P层接收跳闸7</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="P层接收跳闸8">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[7]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[7]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[7]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[7]">
								<Val>P层接收跳闸8</Val>
							</DAI>
						</DOI>
						<DOI name="Ind9" desc="P层接收合闸1">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[8]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[8]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[8]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[8]">
								<Val>P层接收合闸1</Val>
							</DAI>
						</DOI>
						<DOI name="Ind10" desc="P层接收合闸2">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[9]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[9]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[9]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseIn.pTripProcessYx[9]">
								<Val>P层接收合闸2</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GOOUT" lnClass="GGIO" lnType="2_GDNR_SPS_64_GGIO_NSR-3641A-DA-G" inst="1" desc="GOOSE输出">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<DOI name="Ind1" desc="跳电源1高断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[0]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[0]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[0]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[0]">
								<Val>跳电源1高断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind2" desc="跳电源1断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[1]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[1]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[1]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[1]">
								<Val>跳电源1断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind3" desc="跳电源2高断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[2]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[2]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[2]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[2]">
								<Val>跳电源2高断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind4" desc="跳电源2断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[3]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[3]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[3]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[3]">
								<Val>跳电源2断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind5" desc="跳分段断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[4]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[4]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[4]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[4]">
								<Val>跳分段断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind6" desc="合电源1高断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[5]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[5]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[5]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[5]">
								<Val>合电源1高断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind7" desc="合电源1断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[6]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[6]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[6]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[6]">
								<Val>合电源1断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind8" desc="合电源2高断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[7]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[7]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[7]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[7]">
								<Val>合电源2高断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind9" desc="合电源2断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[8]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[8]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[8]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[8]">
								<Val>合电源2断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind10" desc="合分段断路器">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[9]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[9]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[9]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[9]">
								<Val>合分段断路器</Val>
							</DAI>
						</DOI>
						<DOI name="Ind11" desc="跳闸出口1">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[10]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[10]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[10]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[10]">
								<Val>跳闸出口1</Val>
							</DAI>
						</DOI>
						<DOI name="Ind12" desc="跳闸出口2">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[11]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[11]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[11]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[11]">
								<Val>跳闸出口2</Val>
							</DAI>
						</DOI>
						<DOI name="Ind13" desc="跳闸出口3">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[12]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[12]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[12]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[12]">
								<Val>跳闸出口3</Val>
							</DAI>
						</DOI>
						<DOI name="Ind14" desc="跳闸出口4">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[13]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[13]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[13]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[13]">
								<Val>跳闸出口4</Val>
							</DAI>
						</DOI>
						<DOI name="Ind15" desc="跳闸出口5">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[14]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[14]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[14]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[14]">
								<Val>跳闸出口5</Val>
							</DAI>
						</DOI>
						<DOI name="Ind16" desc="跳闸出口6">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[15]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[15]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[15]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[15]">
								<Val>跳闸出口6</Val>
							</DAI>
						</DOI>
						<DOI name="Ind17" desc="跳闸出口7">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[16]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[16]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[16]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[16]">
								<Val>跳闸出口7</Val>
							</DAI>
						</DOI>
						<DOI name="Ind18" desc="跳闸出口8">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[17]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[17]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[17]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[17]">
								<Val>跳闸出口8</Val>
							</DAI>
						</DOI>
						<DOI name="Ind19" desc="跳闸出口9">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[18]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[18]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[18]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[18]">
								<Val>跳闸出口9</Val>
							</DAI>
						</DOI>
						<DOI name="Ind20" desc="跳闸出口10">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[19]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[19]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[19]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[19]">
								<Val>跳闸出口10</Val>
							</DAI>
						</DOI>
						<DOI name="Ind21" desc="跳闸出口11">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[20]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[20]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[20]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[20]">
								<Val>跳闸出口11</Val>
							</DAI>
						</DOI>
						<DOI name="Ind22" desc="跳闸出口12">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[21]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[21]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[21]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[21]">
								<Val>跳闸出口12</Val>
							</DAI>
						</DOI>
						<DOI name="Ind23" desc="跳闸出口13">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[22]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[22]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[22]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[22]">
								<Val>跳闸出口13</Val>
							</DAI>
						</DOI>
						<DOI name="Ind24" desc="跳闸出口14">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[23]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[23]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[23]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[23]">
								<Val>跳闸出口14</Val>
							</DAI>
						</DOI>
						<DOI name="Ind25" desc="跳闸出口15">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[24]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[24]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[24]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[24]">
								<Val>跳闸出口15</Val>
							</DAI>
						</DOI>
						<DOI name="Ind26" desc="跳闸出口16">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[25]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[25]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[25]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[25]">
								<Val>跳闸出口16</Val>
							</DAI>
						</DOI>
						<DOI name="Ind27" desc="备自投动作">
							<DAI name="stVal" sAddr="B02.CNST_Goose.gooseOut.TripYx[26]"/>
							<DAI name="q" sAddr="B02.CNST_Goose.gooseOut.TripYx[26]_q"/>
							<DAI name="t" sAddr="B02.CNST_Goose.gooseOut.TripYx[26]_time"/>
							<DAI name="dU" sAddr="B02.CNST_Goose.gooseOut.TripYx[26]">
								<Val>备自投动作</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
			</Server>
		</AccessPoint>
		<AccessPoint name="M1" router="false" clock="false">
			<Server>
				<Authentication/>
				<LDevice inst="PISV" desc="过程层9-2接收">
					<LN0 lnClass="LLN0" lnType="2_GDNR_V2_LLN0_NSR-3641A-DA-G" inst="" desc="逻辑节点0">
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
								<Val>V1.22</Val>
							</DAI>
							<DAI name="dU">
								<Val>铭牌</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef iedName="MU" ldInst="MU" lnClass="LLN0" doName="DelayTRtg" intAddr="PISV/SVINGGIO1.DelayTRtg"/>
							<ExtRef iedName="MU" ldInst="MU" lnClass="TCTR" lnInst="1" doName="Amp1" intAddr="PISV/SVINGGIO1.SvIn1"/>
							<ExtRef iedName="MU" ldInst="MU" lnClass="TCTR" lnInst="1" doName="Amp2" intAddr="PISV/SVINGGIO1.SvIn2"/>
							<ExtRef iedName="MU" ldInst="MU" lnClass="TVTR" lnInst="6" doName="Vol1" intAddr="PISV/SVINGGIO1.SvIn3"/>
							<ExtRef iedName="MU" ldInst="MU" lnClass="TVTR" lnInst="6" doName="Vol2" intAddr="PISV/SVINGGIO1.SvIn4"/>
							<ExtRef iedName="MU" ldInst="MU" lnClass="TVTR" lnInst="1" doName="Vol1" intAddr="PISV/SVINGGIO1.SvIn5"/>
							<ExtRef iedName="MU" ldInst="MU" lnClass="TVTR" lnInst="1" doName="Vol2" intAddr="PISV/SVINGGIO1.SvIn6"/>
							<ExtRef iedName="MU" ldInst="MU" lnClass="TVTR" lnInst="2" doName="Vol1" intAddr="PISV/SVINGGIO1.SvIn7"/>
							<ExtRef iedName="MU" ldInst="MU" lnClass="TVTR" lnInst="2" doName="Vol2" intAddr="PISV/SVINGGIO1.SvIn8"/>
							<ExtRef iedName="MU" ldInst="MU" lnClass="TVTR" lnInst="3" doName="Vol1" intAddr="PISV/SVINGGIO1.SvIn9"/>
							<ExtRef iedName="MU" ldInst="MU" lnClass="TVTR" lnInst="3" doName="Vol2" intAddr="PISV/SVINGGIO1.SvIn10"/>
							<ExtRef iedName="MU1" ldInst="MU" lnClass="LLN0" doName="DelayTRtg" intAddr="PISV/SVINGGIO3.DelayTRtg"/>
							<ExtRef iedName="MU1" ldInst="MU" lnClass="TCTR" lnInst="1" doName="Amp1" intAddr="PISV/SVINGGIO3.SvIn1"/>
							<ExtRef iedName="MU1" ldInst="MU" lnClass="TCTR" lnInst="1" doName="Amp2" intAddr="PISV/SVINGGIO3.SvIn2"/>
							<ExtRef iedName="MU1" ldInst="MU" lnClass="TVTR" lnInst="6" doName="Vol1" intAddr="PISV/SVINGGIO3.SvIn3"/>
							<ExtRef iedName="MU1" ldInst="MU" lnClass="TVTR" lnInst="6" doName="Vol2" intAddr="PISV/SVINGGIO3.SvIn4"/>
							<ExtRef iedName="MU1" ldInst="MU" lnClass="TVTR" lnInst="1" doName="Vol1" intAddr="PISV/SVINGGIO3.SvIn5"/>
							<ExtRef iedName="MU1" ldInst="MU" lnClass="TVTR" lnInst="1" doName="Vol2" intAddr="PISV/SVINGGIO3.SvIn6"/>
							<ExtRef iedName="MU1" ldInst="MU" lnClass="TVTR" lnInst="2" doName="Vol1" intAddr="PISV/SVINGGIO3.SvIn7"/>
							<ExtRef iedName="MU1" ldInst="MU" lnClass="TVTR" lnInst="2" doName="Vol2" intAddr="PISV/SVINGGIO3.SvIn8"/>
							<ExtRef iedName="MU1" ldInst="MU" lnClass="TVTR" lnInst="3" doName="Vol1" intAddr="PISV/SVINGGIO3.SvIn9"/>
							<ExtRef iedName="MU1" ldInst="MU" lnClass="TVTR" lnInst="3" doName="Vol2" intAddr="PISV/SVINGGIO3.SvIn10"/>
						</Inputs>
					</LN0>
					<LN lnClass="LPHD" lnType="2_GDNR_V2_LPHD_NSR-3641A-DA-G" inst="1" desc="物理装置信息">
						<DOI name="PhyNam" desc="物理装置铭牌"/>
						<DOI name="PhyHealth" desc="物理装置健康状况"/>
						<DOI name="Proxy" desc="是否为代理">
							<DAI name="dU">
								<Val>是否为代理</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="SVIN" lnClass="GGIO" lnType="2_GDNR_VOL_32_GGIO_NSR-3641A-DA-G" inst="1" desc="电源1MU1SV输入">
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
						<DOI name="DelayTRtg" desc="电源1MU1额定延时">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pDelayTCh1"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pDelayTCh1_q"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pDelayTCh1">
								<Val>电源1MU1额定延时</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn1" desc="电源1电流IL1AD1">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[0]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[0]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[0]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[0]">
								<Val>电源1电流IL1AD1</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn2" desc="电源1电流IL1AD2">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[1]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[1]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[1]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[1]">
								<Val>电源1电流IL1AD2</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn3" desc="电源1UL1AD1">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[2]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[2]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[2]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[2]">
								<Val>电源1UL1AD1</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn4" desc="电源1UL1AD2">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[3]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[3]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[3]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[3]">
								<Val>电源1UL1AD2</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn5" desc="1母A相电压Ua1AD1">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[4]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[4]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[4]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[4]">
								<Val>1母A相电压Ua1AD1</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn6" desc="1母A相电压Ua1AD2">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[5]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[5]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[5]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[5]">
								<Val>1母A相电压Ua1AD2</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn7" desc="1母B相电压Ub1AD1">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[6]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[6]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[6]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[6]">
								<Val>1母B相电压Ub1AD1</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn8" desc="1母B相电压Ub1AD2">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[7]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[7]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[7]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[7]">
								<Val>1母B相电压Ub1AD2</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn9" desc="1母C相电压Uc1AD1">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[8]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[8]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[8]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[8]">
								<Val>1母C相电压Uc1AD1</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn10" desc="1母C相电压Uc1AD2">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[9]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[9]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[9]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[9]">
								<Val>1母C相电压Uc1AD2</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="SVIN" lnClass="GGIO" lnType="2_GDNR_VOL_32_GGIO_NSR-3641A-DA-G" inst="2" desc="电源1MU2SV输入">
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
						<DOI name="DelayTRtg" desc="电源1MU2额定延时">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pDelayTCh2"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pDelayTCh2_q"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pDelayTCh2">
								<Val>电源1MU2额定延时</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn1" desc="电源1变高电流IH1AD1">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[10]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[10]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[10]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[10]">
								<Val>电源1变高电流IH1AD1</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn2" desc="电源1变高电流IH1AD2">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[11]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[11]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[11]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[11]">
								<Val>电源1变高电流IH1AD2</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn3" desc="电源1变高电压UH1AD1">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[12]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[12]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[12]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[12]">
								<Val>电源1变高电压UH1AD1</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn4" desc="电源1变高电压UH1AD2">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[13]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[13]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[13]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[13]">
								<Val>电源1变高电压UH1AD2</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="SVIN" lnClass="GGIO" lnType="2_GDNR_VOL_32_GGIO_NSR-3641A-DA-G" inst="3" desc="电源2MU1SV输入">
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
						<DOI name="DelayTRtg" desc="电源2MU1额定延时">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pDelayTCh3"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pDelayTCh3_q"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pDelayTCh3">
								<Val>电源2MU1额定延时</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn1" desc="电源2电流IL2AD1">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[14]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[14]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[14]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[14]">
								<Val>电源2电流IL2AD1</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn2" desc="电源2电流IL2AD2">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[15]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[15]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[15]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[15]">
								<Val>电源2电流IL2AD2</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn3" desc="电源2UL2AD1">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[16]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[16]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[16]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[16]">
								<Val>电源2UL2AD1</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn4" desc="电源2UL2AD2">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[17]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[17]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[17]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[17]">
								<Val>电源2UL2AD2</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn5" desc="2母A相电压Ua2AD1">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[18]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[18]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[18]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[18]">
								<Val>2母A相电压Ua2AD1</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn6" desc="2母A相电压Ua2AD2">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[19]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[19]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[19]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[19]">
								<Val>2母A相电压Ua2AD2</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn7" desc="2母B相电压Ub2AD1">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[20]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[20]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[20]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[20]">
								<Val>2母B相电压Ub2AD1</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn8" desc="2母B相电压Ub2AD2">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[21]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[21]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[21]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[21]">
								<Val>2母B相电压Ub2AD2</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn9" desc="2母C相电压Uc2AD1">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[22]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[22]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[22]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[22]">
								<Val>2母C相电压Uc2AD1</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn10" desc="2母C相电压Uc2AD2">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[23]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[23]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[23]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[23]">
								<Val>2母C相电压Uc2AD2</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="SVIN" lnClass="GGIO" lnType="2_GDNR_VOL_32_GGIO_NSR-3641A-DA-G" inst="4" desc="电源2MU2SV输入">
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
						<DOI name="DelayTRtg" desc="电源2MU2额定延时">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pDelayTCh4"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pDelayTCh4_q"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pDelayTCh4">
								<Val>电源2MU2额定延时</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn1" desc="电源2变高电流IH2AD1">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[24]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[24]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[24]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[24]">
								<Val>电源2变高电流IH2AD1</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn2" desc="电源2变高电流IH2AD2">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[25]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[25]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[25]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[25]">
								<Val>电源2变高电流IH2AD2</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn3" desc="电源2变高电压UH2AD1">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[26]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[26]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[26]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[26]">
								<Val>电源2变高电压UH2AD1</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn4" desc="电源2变高电压UH2AD2">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[27]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[27]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[27]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[27]">
								<Val>电源2变高电压UH2AD2</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="SVIN" lnClass="GGIO" lnType="2_GDNR_VOL_32_GGIO_NSR-3641A-DA-G" inst="5" desc="分段(桥)MUSV输入">
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
						<DOI name="DelayTRtg" desc="分段(桥)MU额定延时">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pDelayTCh5"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pDelayTCh5_q"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pDelayTCh5">
								<Val>分段(桥)MU额定延时</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>SGCC MODEL:2012</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn1" desc="分段A相电流IPAAD1">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[28]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[28]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[28]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[28]">
								<Val>分段A相电流IPAAD1</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn2" desc="分段A相电流IPAAD2">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[29]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[29]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[29]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[29]">
								<Val>分段A相电流IPAAD2</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn3" desc="分段B相电流IPBAD1">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[30]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[30]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[30]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[30]">
								<Val>分段B相电流IPBAD1</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn4" desc="分段B相电流IPBAD2">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[31]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[31]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[31]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[31]">
								<Val>分段B相电流IPBAD2</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn5" desc="分段C相电流IPCAD1">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[32]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[32]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[32]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[32]">
								<Val>分段C相电流IPCAD1</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
						<DOI name="SvIn6" desc="分段C相电流IPCAD2">
							<SDI name="instMag">
								<DAI name="i" sAddr="B02.CNST_AD.pSV_samplePoint_org[33]"/>
							</SDI>
							<DAI name="q" sAddr="B02.CNST_AD.pSV_samplePoint_org[33]_q"/>
							<DAI name="t" sAddr="B02.CNST_AD.pSV_samplePoint_org[33]_time"/>
							<DAI name="dU" sAddr="B02.CNST_AD.pSV_samplePoint_org[33]">
								<Val>分段C相电流IPCAD2</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>GDNR_MODEL:2010</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
			</Server>
		</AccessPoint>
	</IED>
	<DataTypeTemplates>
		<LNodeType id="1_CN_LPHD" desc="物理装置铭牌信息" lnClass="LPHD">
			<DO name="PhyNam" desc="物理装置的铭牌" type="1_CN_DPL"/>
			<DO name="PhyHealth" desc="物理装置的健康" type="1_CN_INS_Health"/>
			<DO name="Proxy" desc="是否为代理" type="1_CN_SPS"/>
		</LNodeType>
		<LNodeType id="1_CN_LLN0" desc="逻辑节点0" lnClass="LLN0">
			<DO name="Mod" desc="模式" type="1_CN_INC_Mod"/>
			<DO name="Beh" desc="性能" type="1_CN_INS_Beh"/>
			<DO name="Health" desc="健康" type="1_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="1_CN_LPL_LN0"/>
		</LNodeType>
		<LNodeType id="1_GNR_LLN0_Smart" desc="智能变电站逻辑节点0" lnClass="LLN0">
			<DO name="Mod" desc="模式" type="1_CN_INC_Mod"/>
			<DO name="Beh" desc="性能" type="1_CN_INS_Beh"/>
			<DO name="Health" desc="健康" type="1_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="1_CN_LPL_LN0"/>
			<DO name="LDName" desc="逻辑设备数字名" type="1_CN_INS_EX"/>
			<DO name="DelayTRtg" desc="额定延时" type="1_CN_SAV_LE_EX"/>
		</LNodeType>
		<LNodeType id="1_GNR_GGIO_DPC8_Ind16" desc="智能变电站合并单元3262接入遥信(32个)" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="1_CN_INC_Mod"/>
			<DO name="Beh" desc="性能" type="1_CN_INS_Beh"/>
			<DO name="Health" desc="健康" type="1_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="1_CN_LPL_LN0"/>
			<DO name="DPCSO1" desc="I母(PT)刀闸双遥信" type="1_CN_DPC"/>
			<DO name="DPCSO2" desc="II母(PT)刀闸双遥信" type="1_CN_DPC"/>
			<DO name="DPCSO3" desc="母联开关双遥信" type="1_CN_DPC"/>
			<DO name="DPCSO4" desc="母联I母刀闸双遥信" type="1_CN_DPC"/>
			<DO name="DPCSO5" desc="母联II母刀闸双遥信" type="1_CN_DPC"/>
			<DO name="DPCSO6" desc="双遥信6" type="1_CN_DPC"/>
			<DO name="DPCSO7" desc="双遥信7" type="1_CN_DPC"/>
			<DO name="DPCSO8" desc="双遥信8" type="1_CN_DPC"/>
			<DO name="Ind1" desc="I母(PT)刀闸单遥信" type="1_CN_SPS"/>
			<DO name="Ind2" desc="II母(PT)刀闸单遥信" type="1_CN_SPS"/>
			<DO name="Ind3" desc="母联开关单遥信" type="1_CN_SPS"/>
			<DO name="Ind4" desc="母联I母刀闸单遥信" type="1_CN_SPS"/>
			<DO name="Ind5" desc="母联II母刀闸单遥信" type="1_CN_SPS"/>
			<DO name="Ind6" desc="单遥信6" type="1_CN_SPS"/>
			<DO name="Ind7" desc="单遥信7" type="1_CN_SPS"/>
			<DO name="Ind8" desc="单遥信8" type="1_CN_SPS"/>
			<DO name="Ind9" desc="并I母电压命令" type="1_CN_SPS"/>
			<DO name="Ind10" desc="并II母电压命令" type="1_CN_SPS"/>
			<DO name="Ind11" desc="解列命令" type="1_CN_SPS"/>
			<DO name="Ind12" desc="单遥信12" type="1_CN_SPS"/>
			<DO name="Ind13" desc="单遥信13" type="1_CN_SPS"/>
			<DO name="Ind14" desc="单遥信14" type="1_CN_SPS"/>
			<DO name="Ind15" desc="单遥信15" type="1_CN_SPS"/>
			<DO name="Ind16" desc="单遥信16" type="1_CN_SPS"/>
		</LNodeType>
		<LNodeType id="1_GNR_GGIO_Ind32" desc="智能变电站合并单元上送遥信(32个)" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="1_CN_INC_Mod"/>
			<DO name="Beh" desc="性能" type="1_CN_INS_Beh"/>
			<DO name="Health" desc="健康" type="1_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="1_CN_LPL_LN0"/>
			<DO name="Ind1" desc="遥信1" type="1_CN_SPS"/>
			<DO name="Ind2" desc="遥信2" type="1_CN_SPS"/>
			<DO name="Ind3" desc="遥信3" type="1_CN_SPS"/>
			<DO name="Ind4" desc="遥信4" type="1_CN_SPS"/>
			<DO name="Ind5" desc="遥信5" type="1_CN_SPS"/>
			<DO name="Ind6" desc="遥信6" type="1_CN_SPS"/>
			<DO name="Ind7" desc="遥信7" type="1_CN_SPS"/>
			<DO name="Ind8" desc="遥信8" type="1_CN_SPS"/>
			<DO name="Ind9" desc="遥信9" type="1_CN_SPS"/>
			<DO name="Ind10" desc="遥信10" type="1_CN_SPS"/>
			<DO name="Ind11" desc="遥信11" type="1_CN_SPS"/>
			<DO name="Ind12" desc="遥信12" type="1_CN_SPS"/>
			<DO name="Ind13" desc="遥信13" type="1_CN_SPS"/>
			<DO name="Ind14" desc="遥信14" type="1_CN_SPS"/>
			<DO name="Ind15" desc="遥信15" type="1_CN_SPS"/>
			<DO name="Ind16" desc="遥信16" type="1_CN_SPS"/>
			<DO name="Ind17" desc="遥信17" type="1_CN_SPS"/>
			<DO name="Ind18" desc="遥信18" type="1_CN_SPS"/>
			<DO name="Ind19" desc="遥信19" type="1_CN_SPS"/>
			<DO name="Ind20" desc="遥信20" type="1_CN_SPS"/>
			<DO name="Ind21" desc="遥信21" type="1_CN_SPS"/>
			<DO name="Ind22" desc="遥信22" type="1_CN_SPS"/>
			<DO name="Ind23" desc="遥信23" type="1_CN_SPS"/>
			<DO name="Ind24" desc="遥信24" type="1_CN_SPS"/>
			<DO name="Ind25" desc="遥信25" type="1_CN_SPS"/>
			<DO name="Ind26" desc="遥信26" type="1_CN_SPS"/>
			<DO name="Ind27" desc="遥信27" type="1_CN_SPS"/>
			<DO name="Ind28" desc="遥信28" type="1_CN_SPS"/>
			<DO name="Ind29" desc="遥信29" type="1_CN_SPS"/>
			<DO name="Ind30" desc="遥信30" type="1_CN_SPS"/>
			<DO name="Ind31" desc="遥信31" type="1_CN_SPS"/>
			<DO name="Ind32" desc="遥信32" type="1_CN_SPS"/>
		</LNodeType>
		<LNodeType id="1_GNR_TVTR_DOUBLE" desc="用于智能变电站电压双AD采样" lnClass="TVTR">
			<DO name="Mod" desc="模式" type="1_CN_INC_Mod"/>
			<DO name="Beh" desc="性能" type="1_CN_INS_Beh"/>
			<DO name="Health" desc="健康" type="1_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="1_CN_LPL"/>
			<DO name="Vol" desc="电压（采样值）" type="1_CN_SAV_LE"/>
			<DO name="Vol1" desc="电压AD1（采样值）" type="1_CN_SAV_LE"/>
			<DO name="Vol2" desc="电压AD2（采样值）" type="1_CN_SAV_LE"/>
			<DO name="FuFail" desc="电压互感器保险丝故障" type="1_CN_SPS"/>
		</LNodeType>
		<LNodeType id="1_GNR_TCTR_DOUBLE" desc="用于智能变电站电流双AD采样" lnClass="TCTR">
			<DO name="Mod" desc="模式" type="1_CN_INC_Mod"/>
			<DO name="Beh" desc="性能" type="1_CN_INS_Beh"/>
			<DO name="Health" desc="健康" type="1_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="1_CN_LPL"/>
			<DO name="Amp" desc="电流（采样值）" type="1_CN_SAV_LE"/>
			<DO name="Amp1" desc="电流AD1（采样值）" type="1_CN_SAV_LE"/>
			<DO name="Amp2" desc="电流AD2（采样值）" type="1_CN_SAV_LE"/>
		</LNodeType>
		<LNodeType id="1_GNR_LPHD_0" desc="物理装置信息" lnClass="LPHD">
			<DO name="PhyNam" desc="物理装置的铭牌" type="1_CN_DPL"/>
			<DO name="PhyHealth" desc="物理装置的健康" type="1_CN_INS_Health"/>
			<DO name="Proxy" desc="是否为代理" type="1_CN_SPS"/>
		</LNodeType>
		<LNodeType id="1_GNR_LLN0_0" desc="基本逻辑节点0" lnClass="LLN0">
			<DO name="Mod" desc="模式" type="1_CN_INC_Mod"/>
			<DO name="Beh" desc="性能" type="1_CN_INS_Beh"/>
			<DO name="Health" desc="健康" type="1_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="1_CN_LPL_LN0"/>
		</LNodeType>
		<LNodeType id="1_GNR_RPIT_XCBR" desc="断路器" lnClass="XCBR">
			<DO name="Mod" type="1_CN_INC_Mod"/>
			<DO name="Beh" type="1_CN_INS_Beh"/>
			<DO name="Health" type="1_CN_INS_Health"/>
			<DO name="NamPlt" type="1_CN_LPL"/>
			<DO name="Loc" type="1_CN_SPS"/>
			<DO name="OpCnt" type="1_CN_INS"/>
			<DO name="Pos" type="1_CN_DPC"/>
			<DO name="BlkOpn" type="1_CN_SPC"/>
			<DO name="BlkCls" type="1_CN_SPC"/>
			<DO name="CBOpCap" type="1_CN_INS_CBOpCap"/>
		</LNodeType>
		<LNodeType id="1_GNR_RPIT_XSWI" desc="闸刀" lnClass="XSWI">
			<DO name="Mod" type="1_CN_INC_Mod"/>
			<DO name="Beh" type="1_CN_INS_Beh"/>
			<DO name="Health" type="1_CN_INS_Health"/>
			<DO name="NamPlt" type="1_CN_LPL"/>
			<DO name="Loc" type="1_CN_SPS"/>
			<DO name="OpCnt" type="1_CN_INS"/>
			<DO name="Pos" type="1_CN_DPC"/>
			<DO name="BlkOpn" type="1_CN_SPC"/>
			<DO name="BlkCls" type="1_CN_SPC"/>
			<DO name="SwTyp" type="1_CN_INS_SwTyp"/>
			<DO name="SwOpCap" type="1_CN_INS_SwOpCap"/>
		</LNodeType>
		<LNodeType id="1_GNR_RPIT_GGIO_Ind32" desc="32路单点断路器量输入" lnClass="GGIO">
			<DO name="Mod" type="1_CN_INC_Mod"/>
			<DO name="Beh" type="1_CN_INS_Beh"/>
			<DO name="Health" type="1_CN_INS_Health"/>
			<DO name="NamPlt" type="1_CN_LPL"/>
			<DO name="Ind1" type="1_CN_SPS"/>
			<DO name="Ind2" type="1_CN_SPS"/>
			<DO name="Ind3" type="1_CN_SPS"/>
			<DO name="Ind4" type="1_CN_SPS"/>
			<DO name="Ind5" type="1_CN_SPS"/>
			<DO name="Ind6" type="1_CN_SPS"/>
			<DO name="Ind7" type="1_CN_SPS"/>
			<DO name="Ind8" type="1_CN_SPS"/>
			<DO name="Ind9" type="1_CN_SPS"/>
			<DO name="Ind10" type="1_CN_SPS"/>
			<DO name="Ind11" type="1_CN_SPS"/>
			<DO name="Ind12" type="1_CN_SPS"/>
			<DO name="Ind13" type="1_CN_SPS"/>
			<DO name="Ind14" type="1_CN_SPS"/>
			<DO name="Ind15" type="1_CN_SPS"/>
			<DO name="Ind16" type="1_CN_SPS"/>
			<DO name="Ind17" type="1_CN_SPS"/>
			<DO name="Ind18" type="1_CN_SPS"/>
			<DO name="Ind19" type="1_CN_SPS"/>
			<DO name="Ind20" type="1_CN_SPS"/>
			<DO name="Ind21" type="1_CN_SPS"/>
			<DO name="Ind22" type="1_CN_SPS"/>
			<DO name="Ind23" type="1_CN_SPS"/>
			<DO name="Ind24" type="1_CN_SPS"/>
			<DO name="Ind25" type="1_CN_SPS"/>
			<DO name="Ind26" type="1_CN_SPS"/>
			<DO name="Ind27" type="1_CN_SPS"/>
			<DO name="Ind28" type="1_CN_SPS"/>
			<DO name="Ind29" type="1_CN_SPS"/>
			<DO name="Ind30" type="1_CN_SPS"/>
			<DO name="Ind31" type="1_CN_SPS"/>
			<DO name="Ind32" type="1_CN_SPS"/>
		</LNodeType>
		<LNodeType id="1_GNR_RPIT_GGIO_Alm32" desc="32路单点装置告警" lnClass="GGIO">
			<DO name="Mod" type="1_CN_INC_Mod"/>
			<DO name="Beh" type="1_CN_INS_Beh"/>
			<DO name="Health" type="1_CN_INS_Health"/>
			<DO name="NamPlt" type="1_CN_LPL"/>
			<DO name="Alm1" type="1_CN_SPS"/>
			<DO name="Alm2" type="1_CN_SPS"/>
			<DO name="Alm3" type="1_CN_SPS"/>
			<DO name="Alm4" type="1_CN_SPS"/>
			<DO name="Alm5" type="1_CN_SPS"/>
			<DO name="Alm6" type="1_CN_SPS"/>
			<DO name="Alm7" type="1_CN_SPS"/>
			<DO name="Alm8" type="1_CN_SPS"/>
			<DO name="Alm9" type="1_CN_SPS"/>
			<DO name="Alm10" type="1_CN_SPS"/>
			<DO name="Alm11" type="1_CN_SPS"/>
			<DO name="Alm12" type="1_CN_SPS"/>
			<DO name="Alm13" type="1_CN_SPS"/>
			<DO name="Alm14" type="1_CN_SPS"/>
			<DO name="Alm15" type="1_CN_SPS"/>
			<DO name="Alm16" type="1_CN_SPS"/>
			<DO name="Alm17" type="1_CN_SPS"/>
			<DO name="Alm18" type="1_CN_SPS"/>
			<DO name="Alm19" type="1_CN_SPS"/>
			<DO name="Alm20" type="1_CN_SPS"/>
			<DO name="Alm21" type="1_CN_SPS"/>
			<DO name="Alm22" type="1_CN_SPS"/>
			<DO name="Alm23" type="1_CN_SPS"/>
			<DO name="Alm24" type="1_CN_SPS"/>
			<DO name="Alm25" type="1_CN_SPS"/>
			<DO name="Alm26" type="1_CN_SPS"/>
			<DO name="Alm27" type="1_CN_SPS"/>
			<DO name="Alm28" type="1_CN_SPS"/>
			<DO name="Alm29" type="1_CN_SPS"/>
			<DO name="Alm30" type="1_CN_SPS"/>
			<DO name="Alm31" type="1_CN_SPS"/>
			<DO name="Alm32" type="1_CN_SPS"/>
		</LNodeType>
		<LNodeType id="1_GNR_RPIT_GGIO_Inputs_SP32" desc="32路单点GOOSE输入" lnClass="GGIO">
			<DO name="Mod" type="1_CN_INC_Mod"/>
			<DO name="Beh" type="1_CN_INS_Beh"/>
			<DO name="Health" type="1_CN_INS_Health"/>
			<DO name="NamPlt" type="1_CN_LPL"/>
			<DO name="SPCSO1" type="1_CN_SPC"/>
			<DO name="SPCSO2" type="1_CN_SPC"/>
			<DO name="SPCSO3" type="1_CN_SPC"/>
			<DO name="SPCSO4" type="1_CN_SPC"/>
			<DO name="SPCSO5" type="1_CN_SPC"/>
			<DO name="SPCSO6" type="1_CN_SPC"/>
			<DO name="SPCSO7" type="1_CN_SPC"/>
			<DO name="SPCSO8" type="1_CN_SPC"/>
			<DO name="SPCSO9" type="1_CN_SPC"/>
			<DO name="SPCSO10" type="1_CN_SPC"/>
			<DO name="SPCSO11" type="1_CN_SPC"/>
			<DO name="SPCSO12" type="1_CN_SPC"/>
			<DO name="SPCSO13" type="1_CN_SPC"/>
			<DO name="SPCSO14" type="1_CN_SPC"/>
			<DO name="SPCSO15" type="1_CN_SPC"/>
			<DO name="SPCSO16" type="1_CN_SPC"/>
			<DO name="SPCSO17" type="1_CN_SPC"/>
			<DO name="SPCSO18" type="1_CN_SPC"/>
			<DO name="SPCSO19" type="1_CN_SPC"/>
			<DO name="SPCSO20" type="1_CN_SPC"/>
			<DO name="SPCSO21" type="1_CN_SPC"/>
			<DO name="SPCSO22" type="1_CN_SPC"/>
			<DO name="SPCSO23" type="1_CN_SPC"/>
			<DO name="SPCSO24" type="1_CN_SPC"/>
			<DO name="SPCSO25" type="1_CN_SPC"/>
			<DO name="SPCSO26" type="1_CN_SPC"/>
			<DO name="SPCSO27" type="1_CN_SPC"/>
			<DO name="SPCSO28" type="1_CN_SPC"/>
			<DO name="SPCSO29" type="1_CN_SPC"/>
			<DO name="SPCSO30" type="1_CN_SPC"/>
			<DO name="SPCSO31" type="1_CN_SPC"/>
			<DO name="SPCSO32" type="1_CN_SPC"/>
		</LNodeType>
		<LNodeType id="1_GNR_RPIT_GGIO_AnIn10" desc="10路浮点型模拟量输入" lnClass="GGIO">
			<DO name="Mod" type="1_CN_INC_Mod"/>
			<DO name="Beh" type="1_CN_INS_Beh"/>
			<DO name="Health" type="1_CN_INS_Health"/>
			<DO name="NamPlt" type="1_CN_LPL"/>
			<DO name="AnIn1" type="1_CN_MV"/>
			<DO name="AnIn2" type="1_CN_MV"/>
			<DO name="AnIn3" type="1_CN_MV"/>
			<DO name="AnIn4" type="1_CN_MV"/>
			<DO name="AnIn5" type="1_CN_MV"/>
			<DO name="AnIn6" type="1_CN_MV"/>
			<DO name="AnIn7" type="1_CN_MV"/>
			<DO name="AnIn8" type="1_CN_MV"/>
			<DO name="AnIn9" type="1_CN_MV"/>
			<DO name="AnIn10" type="1_CN_MV"/>
		</LNodeType>
		<LNodeType id="2_CN_LPHD" desc="物理装置铭牌信息" lnClass="LPHD">
			<DO name="PhyNam" desc="物理装置的铭牌" type="2_CN_DPL"/>
			<DO name="PhyHealth" desc="物理装置的健康" type="2_CN_INS_Health"/>
			<DO name="Proxy" desc="是否为代理" type="2_CN_SPS"/>
		</LNodeType>
		<LNodeType id="2_CN_LLN0" desc="逻辑节点0" lnClass="LLN0">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="性能" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL_LN0"/>
		</LNodeType>
		<LNodeType id="2_GNR_LLN0_Smart" desc="智能变电站逻辑节点0" lnClass="LLN0">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="性能" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL_LN0"/>
			<DO name="LDName" desc="逻辑设备数字名" type="2_CN_INS_EX"/>
			<DO name="DelayTRtg" desc="额定延时" type="2_CN_SAV_LE_EX"/>
		</LNodeType>
		<LNodeType id="2_GNR_GGIO_DPC8_Ind16" desc="智能变电站合并单元3262接入遥信(32个)" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="性能" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL_LN0"/>
			<DO name="DPCSO1" desc="I母(PT)刀闸双遥信" type="2_CN_DPC"/>
			<DO name="DPCSO2" desc="II母(PT)刀闸双遥信" type="2_CN_DPC"/>
			<DO name="DPCSO3" desc="母联开关双遥信" type="2_CN_DPC"/>
			<DO name="DPCSO4" desc="母联I母刀闸双遥信" type="2_CN_DPC"/>
			<DO name="DPCSO5" desc="母联II母刀闸双遥信" type="2_CN_DPC"/>
			<DO name="DPCSO6" desc="双遥信6" type="2_CN_DPC"/>
			<DO name="DPCSO7" desc="双遥信7" type="2_CN_DPC"/>
			<DO name="DPCSO8" desc="双遥信8" type="2_CN_DPC"/>
			<DO name="Ind1" desc="I母(PT)刀闸单遥信" type="2_CN_SPS"/>
			<DO name="Ind2" desc="II母(PT)刀闸单遥信" type="2_CN_SPS"/>
			<DO name="Ind3" desc="母联开关单遥信" type="2_CN_SPS"/>
			<DO name="Ind4" desc="母联I母刀闸单遥信" type="2_CN_SPS"/>
			<DO name="Ind5" desc="母联II母刀闸单遥信" type="2_CN_SPS"/>
			<DO name="Ind6" desc="单遥信6" type="2_CN_SPS"/>
			<DO name="Ind7" desc="单遥信7" type="2_CN_SPS"/>
			<DO name="Ind8" desc="单遥信8" type="2_CN_SPS"/>
			<DO name="Ind9" desc="并I母电压命令" type="2_CN_SPS"/>
			<DO name="Ind10" desc="并II母电压命令" type="2_CN_SPS"/>
			<DO name="Ind11" desc="解列命令" type="2_CN_SPS"/>
			<DO name="Ind12" desc="单遥信12" type="2_CN_SPS"/>
			<DO name="Ind13" desc="单遥信13" type="2_CN_SPS"/>
			<DO name="Ind14" desc="单遥信14" type="2_CN_SPS"/>
			<DO name="Ind15" desc="单遥信15" type="2_CN_SPS"/>
			<DO name="Ind16" desc="单遥信16" type="2_CN_SPS"/>
		</LNodeType>
		<LNodeType id="2_GNR_GGIO_Ind32" desc="智能变电站合并单元上送遥信(32个)" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="性能" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL_LN0"/>
			<DO name="Ind1" desc="遥信1" type="2_CN_SPS"/>
			<DO name="Ind2" desc="遥信2" type="2_CN_SPS"/>
			<DO name="Ind3" desc="遥信3" type="2_CN_SPS"/>
			<DO name="Ind4" desc="遥信4" type="2_CN_SPS"/>
			<DO name="Ind5" desc="遥信5" type="2_CN_SPS"/>
			<DO name="Ind6" desc="遥信6" type="2_CN_SPS"/>
			<DO name="Ind7" desc="遥信7" type="2_CN_SPS"/>
			<DO name="Ind8" desc="遥信8" type="2_CN_SPS"/>
			<DO name="Ind9" desc="遥信9" type="2_CN_SPS"/>
			<DO name="Ind10" desc="遥信10" type="2_CN_SPS"/>
			<DO name="Ind11" desc="遥信11" type="2_CN_SPS"/>
			<DO name="Ind12" desc="遥信12" type="2_CN_SPS"/>
			<DO name="Ind13" desc="遥信13" type="2_CN_SPS"/>
			<DO name="Ind14" desc="遥信14" type="2_CN_SPS"/>
			<DO name="Ind15" desc="遥信15" type="2_CN_SPS"/>
			<DO name="Ind16" desc="遥信16" type="2_CN_SPS"/>
			<DO name="Ind17" desc="遥信17" type="2_CN_SPS"/>
			<DO name="Ind18" desc="遥信18" type="2_CN_SPS"/>
			<DO name="Ind19" desc="遥信19" type="2_CN_SPS"/>
			<DO name="Ind20" desc="遥信20" type="2_CN_SPS"/>
			<DO name="Ind21" desc="遥信21" type="2_CN_SPS"/>
			<DO name="Ind22" desc="遥信22" type="2_CN_SPS"/>
			<DO name="Ind23" desc="遥信23" type="2_CN_SPS"/>
			<DO name="Ind24" desc="遥信24" type="2_CN_SPS"/>
			<DO name="Ind25" desc="遥信25" type="2_CN_SPS"/>
			<DO name="Ind26" desc="遥信26" type="2_CN_SPS"/>
			<DO name="Ind27" desc="遥信27" type="2_CN_SPS"/>
			<DO name="Ind28" desc="遥信28" type="2_CN_SPS"/>
			<DO name="Ind29" desc="遥信29" type="2_CN_SPS"/>
			<DO name="Ind30" desc="遥信30" type="2_CN_SPS"/>
			<DO name="Ind31" desc="遥信31" type="2_CN_SPS"/>
			<DO name="Ind32" desc="遥信32" type="2_CN_SPS"/>
		</LNodeType>
		<LNodeType id="2_GNR_TVTR_DOUBLE" desc="用于智能变电站电压双AD采样" lnClass="TVTR">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="性能" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL"/>
			<DO name="Vol" desc="电压（采样值）" type="2_CN_SAV_LE"/>
			<DO name="Vol1" desc="电压AD1（采样值）" type="2_CN_SAV_LE"/>
			<DO name="Vol2" desc="电压AD2（采样值）" type="2_CN_SAV_LE"/>
			<DO name="FuFail" desc="电压互感器保险丝故障" type="2_CN_SPS"/>
		</LNodeType>
		<LNodeType id="2_GNR_TCTR_DOUBLE" desc="用于智能变电站电流双AD采样" lnClass="TCTR">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="性能" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL"/>
			<DO name="Amp" desc="电流（采样值）" type="2_CN_SAV_LE"/>
			<DO name="Amp1" desc="电流AD1（采样值）" type="2_CN_SAV_LE"/>
			<DO name="Amp2" desc="电流AD2（采样值）" type="2_CN_SAV_LE"/>
		</LNodeType>
		<LNodeType id="2_GDNR_V6_LLN0_NSR-3641A-DA-G" desc="LLN0" lnClass="LLN0">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="2_CN_LPL_LN0"/>
			<DO name="LEDRs" desc="复归LED" type="2_GDNR_DC_V1_SPC"/>
			<DO name="SettingGrp" desc="定值区号" type="2_CN_ING_SP_EX"/>
			<DO name="DeviceName" desc="被保护设备" type="2_CN_STG_SP_EX"/>
			<DO name="IEDParam1" desc="装置参数1" type="2_CN_ASG_SP_EX"/>
			<DO name="IEDParam2" desc="装置参数2" type="2_CN_ASG_SP_EX"/>
			<DO name="IEDParam3" desc="装置参数3" type="2_CN_ASG_SP_EX"/>
			<DO name="IEDParam4" desc="装置参数4" type="2_CN_ASG_SP_EX"/>
			<DO name="IEDParam5" desc="装置参数5" type="2_CN_ASG_SP_EX"/>
			<DO name="IEDParam6" desc="装置参数6" type="2_CN_ASG_SP_EX"/>
			<DO name="IEDParam7" desc="装置参数7" type="2_CN_ASG_SP_EX"/>
			<DO name="IEDParam8" desc="装置参数8" type="2_CN_ASG_SP_EX"/>
			<DO name="IEDParam9" desc="装置参数9" type="2_CN_ASG_SP_EX"/>
			<DO name="IEDParam10" desc="装置参数10" type="2_CN_ASG_SP_EX"/>
			<DO name="IEDParam11" desc="装置参数11" type="2_CN_ASG_SP_EX"/>
			<DO name="IEDParam12" desc="装置参数12" type="2_CN_ASG_SP_EX"/>
			<DO name="IEDParam13" desc="装置参数13" type="2_CN_ASG_SP_EX"/>
			<DO name="IEDParam14" desc="装置参数14" type="2_CN_ASG_SP_EX"/>
			<DO name="IEDParam15" desc="装置参数15" type="2_CN_ASG_SP_EX"/>
			<DO name="IEDParam16" desc="装置参数16" type="2_CN_ASG_SP_EX"/>
			<DO name="FuncEna1" desc="保护功能软压板1" type="2_CN_SPC_EX"/>
			<DO name="FuncEna2" desc="保护功能软压板2" type="2_CN_SPC_EX"/>
			<DO name="FuncEna3" desc="保护功能软压板3" type="2_CN_SPC_EX"/>
			<DO name="FuncEna4" desc="保护功能软压板4" type="2_CN_SPC_EX"/>
			<DO name="FuncEna5" desc="保护功能软压板5" type="2_CN_SPC_EX"/>
			<DO name="FuncEna6" desc="保护功能软压板6" type="2_CN_SPC_EX"/>
			<DO name="FuncEna7" desc="保护功能软压板7" type="2_CN_SPC_EX"/>
			<DO name="FuncEna8" desc="保护功能软压板8" type="2_CN_SPC_EX"/>
			<DO name="FuncEna9" desc="保护功能软压板9" type="2_CN_SPC_EX"/>
			<DO name="FuncEna10" desc="保护功能软压板10" type="2_CN_SPC_EX"/>
			<DO name="RemSetEna" desc="远方修改定值" type="2_GDNR_EXNSV_V1_SPS"/>
			<DO name="RemGrpEna" desc="远方切换定值区" type="2_GDNR_EXNSV_V1_SPS"/>
			<DO name="RemStrpEna" desc="远方控制压板" type="2_GDNR_EXNSV_V1_SPS"/>
			<DO name="CurSettingGrp" desc="当前定值运行区号" type="2_GDNR_EXI_V1_MV"/>
		</LNodeType>
		<LNodeType id="2_GDNR_V2_LPHD_NSR-3641A-DA-G" desc="物理装置信息,适用于过程层接口LD" lnClass="LPHD">
			<DO name="PhyNam" desc="物理装置铭牌" type="2_CN_DPL"/>
			<DO name="PhyHealth" desc="物理装置健康状况" type="2_CN_INS_Health"/>
			<DO name="Proxy" desc="是否为代理" type="2_CN_SPS"/>
		</LNodeType>
		<LNodeType id="2_GDNR_IND_8_GGIO_NSR-3641A-DA-G" desc="8单点开入" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL"/>
			<DO name="Ind1" desc="开入1" type="2_CN_SPS"/>
			<DO name="Ind2" desc="开入2" type="2_CN_SPS"/>
			<DO name="Ind3" desc="开入3" type="2_CN_SPS"/>
			<DO name="Ind4" desc="开入4" type="2_CN_SPS"/>
			<DO name="Ind5" desc="开入5" type="2_CN_SPS"/>
			<DO name="Ind6" desc="开入6" type="2_CN_SPS"/>
			<DO name="Ind7" desc="开入7" type="2_CN_SPS"/>
			<DO name="Ind8" desc="开入8" type="2_CN_SPS"/>
		</LNodeType>
		<LNodeType id="2_GDNR_PROT_MMXU_NSR-3641A-DA-G" desc="保护测量" lnClass="MMXU">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL"/>
			<DO name="PPV" desc="线电压" type="2_CN_DEL"/>
			<DO name="PhV" desc="相电压" type="2_CN_WYE_ALL"/>
			<DO name="A" desc="系统侧电流" type="2_CN_WYE_ALL"/>
		</LNodeType>
		<LNodeType id="2_GDNR_V1_MSQI_NSR-3641A-DA-G" desc="序分量" lnClass="MSQI">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL"/>
			<DO name="SeqV" desc="电压序分量(S1,S2,S0)" type="2_GDNR_V1_SEQ"/>
		</LNodeType>
		<LNodeType id="2_GDNR_V1_MMXN_NSR-3641A-DA-G" desc="相别值无关测量" lnClass="MMXN">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL"/>
			<DO name="Amp" desc="进线电流" type="2_CN_MV"/>
			<DO name="Vol" desc="进线电压" type="2_CN_MV"/>
			<DO name="Hz" desc="频率" type="2_CN_MV"/>
		</LNodeType>
		<LNodeType id="2_GDNR_PUBLIC_BZT_GAPC_NSR-3641A-DA-G" desc="NS3640公共定值" lnClass="GAPC">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="2_CN_LPL_LN0"/>
			<DO name="Str" desc="启动" type="2_CN_ACD"/>
			<DO name="Op" desc="进线1开关拒跳" type="2_CN_ACT"/>
			<DO name="LivBusVal" desc="母线有压定值" type="2_CN_ASG_SG_EX"/>
			<DO name="LivLinVal" desc="进线有压定值" type="2_CN_ASG_SG_EX"/>
			<DO name="DeaVal" desc="无压定值" type="2_CN_ASG_SG_EX"/>
			<DO name="DeaAVal1" desc="无流定值1" type="2_CN_ASG_SG_EX"/>
			<DO name="DeaAVal2" desc="无流定值2" type="2_CN_ASG_SG_EX"/>
			<DO name="OpTmms" desc="时限定值1" type="2_CN_ASG_SG_EX"/>
			<DO name="OpTmms1" desc="时限定值2" type="2_CN_ASG_SG_EX"/>
			<DO name="OpTmms2" desc="时限定值3" type="2_CN_ASG_SG_EX"/>
			<DO name="OpTmms3" desc="时限定值4" type="2_CN_ASG_SG_EX"/>
			<DO name="OpTmms4" desc="时限定值5" type="2_CN_ASG_SG_EX"/>
			<DO name="Enable1" desc="控制字1" type="2_CN_SPG_SG_EX"/>
			<DO name="Enable2" desc="控制字2" type="2_CN_SPG_SG_EX"/>
			<DO name="Enable3" desc="控制字3" type="2_CN_SPG_SG_EX"/>
		</LNodeType>
		<LNodeType id="2_GDNR_NS3640_GAPC_NSR-3641A-DA-G" desc="NS3640备用电源自投" lnClass="GAPC">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="2_CN_LPL"/>
			<DO name="Str" desc="启动" type="2_CN_ACD"/>
			<DO name="Op" desc="备投1成功" type="2_CN_ACT"/>
			<DO name="Enable" desc="控制字1" type="2_CN_SPG_SG_EX"/>
			<DO name="Enable1" desc="控制字2" type="2_CN_SPG_SG_EX"/>
			<DO name="Enable2" desc="控制字3" type="2_CN_SPG_SG_EX"/>
			<DO name="Enable3" desc="控制字4" type="2_CN_SPG_SG_EX"/>
			<DO name="Enable4" desc="控制字5" type="2_CN_SPG_SG_EX"/>
			<DO name="TZ1OUT" desc="方式1跳闸出口1" type="2_CN_ING_SG_EX"/>
			<DO name="TZ1OUT1" desc="方式1跳闸出口2" type="2_CN_ING_SG_EX"/>
		</LNodeType>
		<LNodeType id="2_GDNR_CLD_GAPC_NSR-3641A-DA-G" desc="过负荷联切" lnClass="GAPC">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="2_CN_LPL"/>
			<DO name="Str" desc="启动" type="2_CN_ACD"/>
			<DO name="Op" desc="动作" type="2_CN_ACT"/>
			<DO name="StrVal" desc="定值1" type="2_CN_ASG_SG"/>
			<DO name="Op1" desc="动作1" type="2_CN_ACT"/>
			<DO name="Op2" desc="动作2" type="2_CN_ACT"/>
			<DO name="StrVal1" desc="定值2" type="2_CN_ASG_SG"/>
			<DO name="OpTmms" desc="时限定值1" type="2_CN_ING_SG_EX"/>
			<DO name="OpTmms1" desc="时限定值2" type="2_CN_ING_SG_EX"/>
			<DO name="Trp1Out" desc="跳闸出口1" type="2_CN_ING_SG_EX"/>
			<DO name="Trp2Out" desc="跳闸出口2" type="2_CN_ING_SG_EX"/>
			<DO name="Enable" desc="投入" type="2_CN_SPG_SG_EX"/>
			<DO name="Enable1" desc="投入1" type="2_CN_SPG_SG_EX"/>
			<DO name="Enable2" desc="投入2" type="2_CN_SPG_SG_EX"/>
			<DO name="Enable3" desc="投入3" type="2_CN_SPG_SG_EX"/>
		</LNodeType>
		<LNodeType id="2_GDNR_SECT3_V1_PTOC_NSR-3641A-DA-G" desc="过流3段经复压、反时限保护" lnClass="PTOC">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL"/>
			<DO name="Str" desc="启动" type="2_CN_ACD"/>
			<DO name="Op" desc="动作" type="2_CN_ACT_3P"/>
			<DO name="StrVal" desc="动作定值" type="2_CN_ASG_SG"/>
			<DO name="OpDlTmms" desc="时间定值" type="2_CN_ING_SG"/>
			<DO name="Enable" desc="投入" type="2_CN_SPG_SG_EX"/>
			<DO name="VolBlkEna" desc="经复压闭锁投入" type="2_CN_SPG_SG_EX"/>
			<DO name="StrValUL" desc="过流加速低电压定值" type="2_CN_ASG_SG_EX"/>
			<DO name="StrValU2" desc="过流加速负序电压定值" type="2_CN_ASG_SG_EX"/>
		</LNodeType>
		<LNodeType id="2_GDNR_EVENT_BZT_GAPC_NSR-3641A-DA-G" desc="NS3640公共保护事件" lnClass="GAPC">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="2_CN_LPL"/>
			<DO name="Str" desc="启动" type="2_CN_ACD"/>
			<DO name="Op" desc="动作" type="2_CN_ACT"/>
			<DO name="Op1" desc="动作1" type="2_CN_ACT"/>
			<DO name="Op2" desc="动作2" type="2_CN_ACT"/>
			<DO name="Op3" desc="动作3" type="2_CN_ACT"/>
			<DO name="Op4" desc="动作4" type="2_CN_ACT"/>
			<DO name="Op5" desc="动作5" type="2_CN_ACT"/>
			<DO name="Op6" desc="动作6" type="2_CN_ACT"/>
			<DO name="Op7" desc="动作7" type="2_CN_ACT"/>
			<DO name="Op8" desc="动作8" type="2_CN_ACT"/>
			<DO name="Op9" desc="动作9" type="2_CN_ACT"/>
			<DO name="Op10" desc="动作10" type="2_CN_ACT"/>
			<DO name="Op11" desc="动作11" type="2_CN_ACT"/>
			<DO name="Op12" desc="动作12" type="2_CN_ACT"/>
			<DO name="Op31" desc="动作31" type="2_CN_ACT"/>
		</LNodeType>
		<LNodeType id="2_GDNR_SPC_8_GGIO_NSR-3641A-DA-G" desc="8可控单点" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL"/>
			<DO name="SPCSO1" desc="可控单点1/GOOSE输入虚端子" type="2_CN_SPC"/>
			<DO name="SPCSO2" desc="可控单点2/GOOSE输入虚端子" type="2_CN_SPC"/>
			<DO name="SPCSO3" desc="可控单点3/GOOSE输入虚端子" type="2_CN_SPC"/>
			<DO name="SPCSO4" desc="可控单点4/GOOSE输入虚端子" type="2_CN_SPC"/>
			<DO name="SPCSO5" desc="可控单点5/GOOSE输入虚端子" type="2_CN_SPC"/>
			<DO name="SPCSO6" desc="可控单点6/GOOSE输入虚端子" type="2_CN_SPC"/>
			<DO name="SPCSO7" desc="可控单点7/GOOSE输入虚端子" type="2_CN_SPC"/>
			<DO name="SPCSO8" desc="可控单点8/GOOSE输入虚端子" type="2_CN_SPC"/>
		</LNodeType>
		<LNodeType id="2_GDNR_ALM_32_GGIO_NSR-3641A-DA-G" desc="32告警" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="性能" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL"/>
			<DO name="Alm1" desc="告警1" type="2_CN_SPS"/>
			<DO name="Alm2" desc="告警2" type="2_CN_SPS"/>
			<DO name="Alm3" desc="告警3" type="2_CN_SPS"/>
			<DO name="Alm4" desc="告警4" type="2_CN_SPS"/>
			<DO name="Alm5" desc="告警5" type="2_CN_SPS"/>
			<DO name="Alm6" desc="告警6" type="2_CN_SPS"/>
			<DO name="Alm7" desc="告警7" type="2_CN_SPS"/>
			<DO name="Alm8" desc="告警8" type="2_CN_SPS"/>
			<DO name="Alm9" desc="告警9" type="2_CN_SPS"/>
			<DO name="Alm10" desc="告警10" type="2_CN_SPS"/>
			<DO name="Alm11" desc="告警11" type="2_CN_SPS"/>
			<DO name="Alm12" desc="告警12" type="2_CN_SPS"/>
			<DO name="Alm13" desc="告警13" type="2_CN_SPS"/>
			<DO name="Alm14" desc="告警14" type="2_CN_SPS"/>
			<DO name="Alm15" desc="告警15" type="2_CN_SPS"/>
			<DO name="Alm16" desc="告警16" type="2_CN_SPS"/>
			<DO name="Alm17" desc="告警17" type="2_CN_SPS"/>
			<DO name="Alm18" desc="告警18" type="2_CN_SPS"/>
			<DO name="Alm19" desc="告警19" type="2_CN_SPS"/>
			<DO name="Alm20" desc="告警20" type="2_CN_SPS"/>
			<DO name="Alm21" desc="告警21" type="2_CN_SPS"/>
			<DO name="Alm22" desc="告警22" type="2_CN_SPS"/>
			<DO name="Alm23" desc="告警23" type="2_CN_SPS"/>
			<DO name="Alm24" desc="告警24" type="2_CN_SPS"/>
			<DO name="Alm25" desc="告警25" type="2_CN_SPS"/>
			<DO name="Alm26" desc="告警26" type="2_CN_SPS"/>
			<DO name="Alm27" desc="告警27" type="2_CN_SPS"/>
			<DO name="Alm28" desc="告警28" type="2_CN_SPS"/>
			<DO name="Alm29" desc="告警29" type="2_CN_SPS"/>
			<DO name="Alm30" desc="告警30" type="2_CN_SPS"/>
			<DO name="Alm31" desc="告警31" type="2_CN_SPS"/>
			<DO name="Alm32" desc="告警32" type="2_CN_SPS"/>
		</LNodeType>
		<LNodeType id="2_GDNR_V3_LLN0_NSR-3641A-DA-G" desc="LLN0" lnClass="LLN0">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="2_CN_LPL_LN0"/>
			<DO name="LEDRs" desc="复归LED" type="2_GDNR_DC_V1_SPC"/>
		</LNodeType>
		<LNodeType id="2_GDNR_EVE_GGIO_NSR-3641A-DA-G" desc="一般事件" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL"/>
			<DO name="Alm1" desc="事件1" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm2" desc="事件2" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm3" desc="事件3" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm4" desc="事件4" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm5" desc="事件5" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm6" desc="事件6" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm7" desc="事件7" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm8" desc="事件8" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm9" desc="事件9" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm10" desc="事件10" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm11" desc="事件11" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm12" desc="事件12" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm13" desc="事件13" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm14" desc="事件14" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm15" desc="事件15" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm16" desc="事件16" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm17" desc="事件17" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm18" desc="事件18" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm19" desc="事件19" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm20" desc="事件20" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm21" desc="事件21" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm22" desc="事件22" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm23" desc="事件23" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm24" desc="事件24" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm25" desc="事件25" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm26" desc="事件26" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm27" desc="事件27" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm28" desc="事件28" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm29" desc="事件29" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm30" desc="事件30" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm31" desc="事件31" type="2_GDNR_NSV_V1_SPS"/>
			<DO name="Alm32" desc="事件32" type="2_GDNR_NSV_V1_SPS"/>
		</LNodeType>
		<LNodeType id="2_GDNR_EX_V1_SPVT_NSR-3641A-DA-G" desc="二次设备电源电压监测" lnClass="SPVT">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL_EX"/>
			<DO name="Vol" desc="电压测量值" type="2_CN_MV_EX"/>
		</LNodeType>
		<LNodeType id="2_GDNR_EX_V1_STMP_NSR-3641A-DA-G" desc="二次设备温度监测" lnClass="STMP">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL_EX"/>
			<DO name="Tmp" desc="温度（°C）" type="2_CN_MV"/>
		</LNodeType>
		<LNodeType id="2_GDNR_V2_LLN0_NSR-3641A-DA-G" desc="LLN0" lnClass="LLN0">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="逻辑节点铭牌" type="2_CN_LPL_LN0"/>
		</LNodeType>
		<LNodeType id="2_GDNR_BASIC_V1_RDRE_NSR-3641A-DA-G" desc="扰动记录" lnClass="RDRE">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL"/>
			<DO name="RcdMade" desc="装置录波状态" type="2_CN_SPS"/>
			<DO name="FltNum" desc="录波文件序号" type="2_CN_INS"/>
		</LNodeType>
		<LNodeType id="2_GDNR_SPS_64_GGIO_NSR-3641A-DA-G" desc="64单点遥信" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="性能" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL"/>
			<DO name="Ind1" desc="遥信1" type="2_CN_SPS"/>
			<DO name="Ind2" desc="遥信2" type="2_CN_SPS"/>
			<DO name="Ind3" desc="遥信3" type="2_CN_SPS"/>
			<DO name="Ind4" desc="遥信4" type="2_CN_SPS"/>
			<DO name="Ind5" desc="遥信5" type="2_CN_SPS"/>
			<DO name="Ind6" desc="遥信6" type="2_CN_SPS"/>
			<DO name="Ind7" desc="遥信7" type="2_CN_SPS"/>
			<DO name="Ind8" desc="遥信8" type="2_CN_SPS"/>
			<DO name="Ind9" desc="遥信9" type="2_CN_SPS"/>
			<DO name="Ind10" desc="遥信10" type="2_CN_SPS"/>
			<DO name="Ind11" desc="遥信11" type="2_CN_SPS"/>
			<DO name="Ind12" desc="遥信12" type="2_CN_SPS"/>
			<DO name="Ind13" desc="遥信13" type="2_CN_SPS"/>
			<DO name="Ind14" desc="遥信14" type="2_CN_SPS"/>
			<DO name="Ind15" desc="遥信15" type="2_CN_SPS"/>
			<DO name="Ind16" desc="遥信16" type="2_CN_SPS"/>
			<DO name="Ind17" desc="遥信17" type="2_CN_SPS"/>
			<DO name="Ind18" desc="遥信18" type="2_CN_SPS"/>
			<DO name="Ind19" desc="遥信19" type="2_CN_SPS"/>
			<DO name="Ind20" desc="遥信20" type="2_CN_SPS"/>
			<DO name="Ind21" desc="遥信21" type="2_CN_SPS"/>
			<DO name="Ind22" desc="遥信22" type="2_CN_SPS"/>
			<DO name="Ind23" desc="遥信23" type="2_CN_SPS"/>
			<DO name="Ind24" desc="遥信24" type="2_CN_SPS"/>
			<DO name="Ind25" desc="遥信25" type="2_CN_SPS"/>
			<DO name="Ind26" desc="遥信26" type="2_CN_SPS"/>
			<DO name="Ind27" desc="遥信27" type="2_CN_SPS"/>
			<DO name="Ind28" desc="遥信28" type="2_CN_SPS"/>
			<DO name="Ind29" desc="遥信29" type="2_CN_SPS"/>
			<DO name="Ind30" desc="遥信30" type="2_CN_SPS"/>
			<DO name="Ind31" desc="遥信31" type="2_CN_SPS"/>
			<DO name="Ind32" desc="遥信32" type="2_CN_SPS"/>
			<DO name="Ind33" desc="遥信33" type="2_CN_SPS"/>
			<DO name="Ind34" desc="遥信34" type="2_CN_SPS"/>
			<DO name="Ind35" desc="遥信35" type="2_CN_SPS"/>
			<DO name="Ind36" desc="遥信36" type="2_CN_SPS"/>
			<DO name="Ind37" desc="遥信37" type="2_CN_SPS"/>
			<DO name="Ind38" desc="遥信38" type="2_CN_SPS"/>
			<DO name="Ind39" desc="遥信39" type="2_CN_SPS"/>
			<DO name="Ind40" desc="遥信40" type="2_CN_SPS"/>
			<DO name="Ind41" desc="遥信41" type="2_CN_SPS"/>
			<DO name="Ind42" desc="遥信42" type="2_CN_SPS"/>
			<DO name="Ind43" desc="遥信43" type="2_CN_SPS"/>
			<DO name="Ind44" desc="遥信44" type="2_CN_SPS"/>
			<DO name="Ind45" desc="遥信45" type="2_CN_SPS"/>
			<DO name="Ind46" desc="遥信46" type="2_CN_SPS"/>
			<DO name="Ind47" desc="遥信47" type="2_CN_SPS"/>
			<DO name="Ind48" desc="遥信48" type="2_CN_SPS"/>
			<DO name="Ind49" desc="遥信49" type="2_CN_SPS"/>
			<DO name="Ind50" desc="遥信50" type="2_CN_SPS"/>
			<DO name="Ind51" desc="遥信51" type="2_CN_SPS"/>
			<DO name="Ind52" desc="遥信52" type="2_CN_SPS"/>
			<DO name="Ind53" desc="遥信53" type="2_CN_SPS"/>
			<DO name="Ind54" desc="遥信54" type="2_CN_SPS"/>
			<DO name="Ind55" desc="遥信55" type="2_CN_SPS"/>
			<DO name="Ind56" desc="遥信56" type="2_CN_SPS"/>
			<DO name="Ind57" desc="遥信57" type="2_CN_SPS"/>
			<DO name="Ind58" desc="遥信58" type="2_CN_SPS"/>
			<DO name="Ind59" desc="遥信59" type="2_CN_SPS"/>
			<DO name="Ind60" desc="遥信60" type="2_CN_SPS"/>
			<DO name="Ind61" desc="遥信61" type="2_CN_SPS"/>
			<DO name="Ind62" desc="遥信62" type="2_CN_SPS"/>
			<DO name="Ind63" desc="遥信63" type="2_CN_SPS"/>
			<DO name="Ind64" desc="遥信64" type="2_CN_SPS"/>
		</LNodeType>
		<LNodeType id="2_GDNR_DPS_8_GGIO_NSR-3641A-DA-G" desc="8双点开入" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL"/>
			<DO name="DPCSO1" desc="双点开入1" type="2_GDNR_NCO_V1_DPC"/>
			<DO name="DPCSO2" desc="双点开入2" type="2_GDNR_NCO_V1_DPC"/>
			<DO name="DPCSO3" desc="双点开入3" type="2_GDNR_NCO_V1_DPC"/>
			<DO name="DPCSO4" desc="双点开入4" type="2_GDNR_NCO_V1_DPC"/>
			<DO name="DPCSO5" desc="双点开入5" type="2_GDNR_NCO_V1_DPC"/>
			<DO name="DPCSO6" desc="双点开入6" type="2_GDNR_NCO_V1_DPC"/>
			<DO name="DPCSO7" desc="双点开入7" type="2_GDNR_NCO_V1_DPC"/>
			<DO name="DPCSO8" desc="双点开入8" type="2_GDNR_NCO_V1_DPC"/>
		</LNodeType>
		<LNodeType id="2_GDNR_VOL_32_GGIO_NSR-3641A-DA-G" desc="32采样值输入" lnClass="GGIO">
			<DO name="Mod" desc="模式" type="2_CN_INC_Mod"/>
			<DO name="Beh" desc="行为" type="2_CN_INS_Beh"/>
			<DO name="Health" desc="健康状态" type="2_CN_INS_Health"/>
			<DO name="NamPlt" desc="铭牌" type="2_CN_LPL"/>
			<DO name="DelayTRtg" desc="额定延时" type="2_CN_SAV_EX"/>
			<DO name="SvIn1" desc="模拟量1" type="2_GDNR_EX_V1_SAV"/>
			<DO name="SvIn2" desc="模拟量2" type="2_GDNR_EX_V1_SAV"/>
			<DO name="SvIn3" desc="模拟量3" type="2_GDNR_EX_V1_SAV"/>
			<DO name="SvIn4" desc="模拟量4" type="2_GDNR_EX_V1_SAV"/>
			<DO name="SvIn5" desc="模拟量5" type="2_GDNR_EX_V1_SAV"/>
			<DO name="SvIn6" desc="模拟量6" type="2_GDNR_EX_V1_SAV"/>
			<DO name="SvIn7" desc="模拟量7" type="2_GDNR_EX_V1_SAV"/>
			<DO name="SvIn8" desc="模拟量8" type="2_GDNR_EX_V1_SAV"/>
			<DO name="SvIn9" desc="模拟量9" type="2_GDNR_EX_V1_SAV"/>
			<DO name="SvIn10" desc="模拟量10" type="2_GDNR_EX_V1_SAV"/>
		</LNodeType>
		<DOType id="1_CN_LPL" cdc="LPL">
			<DA name="vendor" bType="VisString255" fc="DC">
				<Val>naritech</Val>
			</DA>
			<DA name="swRev" bType="VisString255" fc="DC"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="1_CN_INS_Beh" cdc="INS">
			<DA name="stVal" bType="Enum" type="Beh" dchg="true" fc="ST">
				<Val>1</Val>
			</DA>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="1_CN_INS_Health" cdc="INS">
			<DA name="stVal" bType="Enum" type="Health" dchg="true" fc="ST">
				<Val>1</Val>
			</DA>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="1_CN_INC_Mod" cdc="INC">
			<DA name="stVal" bType="Enum" type="Mod" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="ctlModel" bType="Enum" type="ctlModel" fc="CF">
				<Val>0</Val>
			</DA>
		</DOType>
		<DOType id="1_CN_LPL_LN0" cdc="LPL">
			<DA name="vendor" bType="VisString255" fc="DC">
				<Val>naritech</Val>
			</DA>
			<DA name="swRev" bType="VisString255" fc="DC"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="configRev" bType="VisString255" fc="DC"/>
			<DA name="ldNs" bType="VisString255" fc="EX">
				<Val>DL/T860.74:2003</Val>
			</DA>
		</DOType>
		<DOType id="1_CN_SPS" cdc="SPS">
			<DA name="stVal" bType="BOOLEAN" fc="ST"/>
			<DA name="q" bType="Quality" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="BOOLEAN" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="1_CN_DPL" cdc="DPL">
			<DA name="vendor" bType="VisString255" fc="DC"/>
			<DA name="hwRev" bType="VisString255" fc="DC"/>
			<DA name="swRev" bType="VisString255" fc="DC"/>
			<DA name="serNum" bType="VisString255" fc="DC"/>
			<DA name="model" bType="VisString255" fc="DC"/>
			<DA name="location" bType="VisString255" fc="DC"/>
		</DOType>
		<DOType id="1_CN_SAV_LE" cdc="SAV">
			<DA name="instMag" bType="Struct" type="1_CN_AnalogueValue_I" fc="MX"/>
			<DA name="q" bType="Quality" fc="MX"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="1_CN_INS_EX" cdc="INS">
			<DA name="stVal" bType="INT32" dchg="true" qchg="false" dupd="false" fc="ST"/>
			<DA name="q" bType="Quality" dchg="false" qchg="true" dupd="false" fc="ST"/>
			<DA name="t" bType="Timestamp" dchg="false" qchg="false" dupd="false" fc="ST"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="INT32" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
		</DOType>
		<DOType id="1_CN_DPC" cdc="DPC">
			<DA name="stVal" bType="Dbpos" dchg="false" qchg="false" dupd="false" fc="ST"/>
			<DA name="q" bType="Quality" dchg="false" qchg="false" dupd="false" fc="ST"/>
			<DA name="t" bType="Timestamp" dchg="false" qchg="false" dupd="false" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" dchg="false" qchg="false" dupd="false" fc="SV"/>
			<DA name="subVal" bType="Dbpos" dchg="false" qchg="false" dupd="false" fc="SV"/>
			<DA name="subQ" bType="Quality" dchg="false" qchg="false" dupd="false" fc="SV"/>
			<DA name="subID" bType="VisString64" dchg="false" qchg="false" dupd="false" fc="SV"/>
			<DA name="dU" bType="Unicode255" dchg="false" qchg="false" dupd="false" fc="DC"/>
			<DA name="ctlModel" bType="Enum" type="ctlModel" dchg="false" qchg="false" dupd="false" fc="CF"/>
			<DA name="SBOw" bType="Struct" type="1_CN_SBOw_Oper_SDPC" fc="CO"/>
			<DA name="Oper" bType="Struct" type="1_CN_SBOw_Oper_SDPC" fc="CO"/>
			<DA name="Cancel" bType="Struct" type="1_CN_Cancel_SDPC" fc="CO"/>
			<DA name="pulseConfig" bType="Struct" type="1_CN_PulseConfig" fc="CF"/>
			<DA name="sboTimeout" bType="INT32U" fc="CF"/>
			<DA name="sboClass" bType="Enum" type="sboClass" fc="CF"/>
		</DOType>
		<DOType id="1_CN_SAV_LE_EX" cdc="SAV">
			<DA name="instMag" bType="Struct" type="1_CN_AnalogueValue_I" dchg="false" qchg="false" dupd="false" fc="MX"/>
			<DA name="q" bType="Quality" dchg="false" qchg="false" dupd="false" fc="MX"/>
			<DA name="dataNs" bType="VisString255" dchg="false" qchg="false" dupd="false" fc="EX"/>
		</DOType>
		<DOType id="1_CN_INS" cdc="INS">
			<DA name="stVal" bType="INT32" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="INT32" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="1_CN_INS_CBOpCap" cdc="INS">
			<DA name="stVal" bType="Enum" type="CBOpCap" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="Enum" type="CBOpCap" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="1_CN_INS_SwTyp" cdc="INS">
			<DA name="stVal" bType="Enum" type="SwTyp" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="Enum" type="SwTyp" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="1_CN_INS_SwOpCap" cdc="INS">
			<DA name="stVal" bType="Enum" type="SwOpCap" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="Enum" type="SwOpCap" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="1_CN_MV" cdc="MV">
			<DA name="mag" bType="Struct" type="1_CN_AnalogueValue" dchg="true" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subMag" bType="Struct" type="1_CN_AnalogueValue" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="units" bType="Struct" type="1_CN_units" fc="CF"/>
			<DA name="db" bType="INT32U" fc="CF"/>
			<DA name="zeroDb" bType="INT32U" fc="CF"/>
			<DA name="sVC" bType="Struct" type="1_CN_ScaledValueConfig" fc="CF"/>
			<DA name="rangeC" bType="Struct" type="1_CN_RangeConfig" fc="CF"/>
			<DA name="smpRate" bType="INT32U" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="1_CN_SPC" cdc="SPC">
			<DA name="SBOw" bType="Struct" type="1_CN_SBOw_Oper_SDPC" fc="CO"/>
			<DA name="Oper" bType="Struct" type="1_CN_SBOw_Oper_SDPC" fc="CO"/>
			<DA name="Cancel" bType="Struct" type="1_CN_Cancel_SDPC" fc="CO"/>
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="BOOLEAN" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="pulseConfig" bType="Struct" type="1_CN_PulseConfig" fc="CF"/>
			<DA name="ctlModel" bType="Enum" type="ctlModel" fc="CF"/>
			<DA name="sboTimeout" bType="INT32U" fc="CF"/>
			<DA name="sboClass" bType="Enum" type="sboClass" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="2_CN_LPL" cdc="LPL">
			<DA name="vendor" bType="VisString255" fc="DC">
				<Val>naritech</Val>
			</DA>
			<DA name="swRev" bType="VisString255" fc="DC"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="2_CN_INS_Beh" cdc="INS">
			<DA name="stVal" bType="Enum" type="Beh" dchg="true" fc="ST">
				<Val>1</Val>
			</DA>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="2_CN_INS_Health" cdc="INS">
			<DA name="stVal" bType="Enum" type="Health" dchg="true" fc="ST">
				<Val>1</Val>
			</DA>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="2_CN_INC_Mod" cdc="INC">
			<DA name="stVal" bType="Enum" type="Mod" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="ctlModel" bType="Enum" type="ctlModel" fc="CF">
				<Val>0</Val>
			</DA>
		</DOType>
		<DOType id="2_CN_LPL_LN0" cdc="LPL">
			<DA name="vendor" bType="VisString255" fc="DC">
				<Val>naritech</Val>
			</DA>
			<DA name="swRev" bType="VisString255" fc="DC"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="configRev" bType="VisString255" fc="DC"/>
			<DA name="ldNs" bType="VisString255" fc="EX">
				<Val>DL/T860.74:2003</Val>
			</DA>
		</DOType>
		<DOType id="2_CN_SPS" cdc="SPS">
			<DA name="stVal" bType="BOOLEAN" fc="ST"/>
			<DA name="q" bType="Quality" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="BOOLEAN" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="2_CN_DPL" cdc="DPL">
			<DA name="vendor" bType="VisString255" fc="DC"/>
			<DA name="hwRev" bType="VisString255" fc="DC"/>
			<DA name="swRev" bType="VisString255" fc="DC"/>
			<DA name="serNum" bType="VisString255" fc="DC"/>
			<DA name="model" bType="VisString255" fc="DC"/>
			<DA name="location" bType="VisString255" fc="DC"/>
		</DOType>
		<DOType id="2_CN_SAV_LE" cdc="SAV">
			<DA name="instMag" bType="Struct" type="2_CN_AnalogueValue_I" fc="MX"/>
			<DA name="q" bType="Quality" fc="MX"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="2_CN_INS_EX" cdc="INS">
			<DA name="stVal" bType="INT32" dchg="true" qchg="false" dupd="false" fc="ST"/>
			<DA name="q" bType="Quality" dchg="false" qchg="true" dupd="false" fc="ST"/>
			<DA name="t" bType="Timestamp" dchg="false" qchg="false" dupd="false" fc="ST"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="INT32" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
		</DOType>
		<DOType id="2_CN_DPC" cdc="DPC">
			<DA name="stVal" bType="Dbpos" dchg="false" qchg="false" dupd="false" fc="ST"/>
			<DA name="q" bType="Quality" dchg="false" qchg="false" dupd="false" fc="ST"/>
			<DA name="t" bType="Timestamp" dchg="false" qchg="false" dupd="false" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" dchg="false" qchg="false" dupd="false" fc="SV"/>
			<DA name="subVal" bType="Dbpos" dchg="false" qchg="false" dupd="false" fc="SV"/>
			<DA name="subQ" bType="Quality" dchg="false" qchg="false" dupd="false" fc="SV"/>
			<DA name="subID" bType="VisString64" dchg="false" qchg="false" dupd="false" fc="SV"/>
			<DA name="dU" bType="Unicode255" dchg="false" qchg="false" dupd="false" fc="DC"/>
			<DA name="ctlModel" bType="Enum" type="ctlModel" dchg="false" qchg="false" dupd="false" fc="CF"/>
			<DA name="SBOw" bType="Struct" type="2_CN_SBOw_Oper_SDPC" fc="CO"/>
			<DA name="Oper" bType="Struct" type="2_CN_SBOw_Oper_SDPC" fc="CO"/>
			<DA name="Cancel" bType="Struct" type="2_CN_Cancel_SDPC" fc="CO"/>
			<DA name="pulseConfig" bType="Struct" type="2_CN_PulseConfig" fc="CF"/>
			<DA name="sboTimeout" bType="INT32U" fc="CF"/>
			<DA name="sboClass" bType="Enum" type="sboClass" fc="CF"/>
		</DOType>
		<DOType id="2_CN_SAV_LE_EX" cdc="SAV">
			<DA name="instMag" bType="Struct" type="2_CN_AnalogueValue_I" dchg="false" qchg="false" dupd="false" fc="MX"/>
			<DA name="q" bType="Quality" dchg="false" qchg="false" dupd="false" fc="MX"/>
			<DA name="dataNs" bType="VisString255" dchg="false" qchg="false" dupd="false" fc="EX"/>
		</DOType>
		<DOType id="2_CN_INS" cdc="INS">
			<DA name="stVal" bType="INT32" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="INT32" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="2_CN_MV" cdc="MV">
			<DA name="mag" bType="Struct" type="2_CN_AnalogueValue" dchg="true" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subMag" bType="Struct" type="2_CN_AnalogueValue" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="units" bType="Struct" type="2_CN_units" fc="CF"/>
			<DA name="db" bType="INT32U" fc="CF"/>
			<DA name="zeroDb" bType="INT32U" fc="CF"/>
			<DA name="sVC" bType="Struct" type="2_CN_ScaledValueConfig" fc="CF"/>
			<DA name="rangeC" bType="Struct" type="2_CN_RangeConfig" fc="CF"/>
			<DA name="smpRate" bType="INT32U" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="2_CN_SPC" cdc="SPC">
			<DA name="SBOw" bType="Struct" type="2_CN_SBOw_Oper_SDPC" fc="CO"/>
			<DA name="Oper" bType="Struct" type="2_CN_SBOw_Oper_SDPC" fc="CO"/>
			<DA name="Cancel" bType="Struct" type="2_CN_Cancel_SDPC" fc="CO"/>
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="BOOLEAN" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="pulseConfig" bType="Struct" type="2_CN_PulseConfig" fc="CF"/>
			<DA name="ctlModel" bType="Enum" type="ctlModel" fc="CF"/>
			<DA name="sboTimeout" bType="INT32U" fc="CF"/>
			<DA name="sboClass" bType="Enum" type="sboClass" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="2_GDNR_DC_V1_SPC" cdc="SPC">
			<DA name="Oper" bType="Struct" type="2_CN_SBOw_Oper_SDPC" fc="CO"/>
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="ctlModel" bType="Enum" type="ctlModel" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="2_CN_ING_SP_EX" cdc="ING">
			<DA name="setVal" bType="INT32" fc="SP"/>
			<DA name="minVal" bType="INT32" fc="CF"/>
			<DA name="maxVal" bType="INT32" fc="CF"/>
			<DA name="stepSize" bType="INT32U" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>SGCC MODEL:2012</Val>
			</DA>
		</DOType>
		<DOType id="2_CN_STG_SP_EX" cdc="STG">
			<DA name="setVal" bType="Unicode255" fc="SP"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="cdcNs" bType="VisString255" fc="EX">
				<Val>SGCC MODEL:2012</Val>
			</DA>
			<DA name="cdcName" bType="VisString255" fc="EX"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>SGCC MODEL:2012</Val>
			</DA>
		</DOType>
		<DOType id="2_CN_ASG_SP_EX" cdc="ASG">
			<DA name="setMag" bType="Struct" type="2_CN_AnalogueValue" fc="SP"/>
			<DA name="units" bType="Struct" type="2_CN_units" fc="CF"/>
			<DA name="sVC" bType="Struct" type="2_CN_ScaledValueConfig" fc="CF"/>
			<DA name="minVal" bType="Struct" type="2_CN_AnalogueValue" fc="CF"/>
			<DA name="maxVal" bType="Struct" type="2_CN_AnalogueValue" fc="CF"/>
			<DA name="stepSize" bType="Struct" type="2_CN_AnalogueValue" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>SGCC MODEL:2012</Val>
			</DA>
		</DOType>
		<DOType id="2_CN_SPC_EX" cdc="SPC">
			<DA name="SBOw" bType="Struct" type="2_CN_SBOw_Oper_SDPC" fc="CO"/>
			<DA name="Oper" bType="Struct" type="2_CN_SBOw_Oper_SDPC" fc="CO"/>
			<DA name="Cancel" bType="Struct" type="2_CN_Cancel_SDPC" fc="CO"/>
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="BOOLEAN" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="pulseConfig" bType="Struct" type="2_CN_PulseConfig" fc="CF"/>
			<DA name="ctlModel" bType="Enum" type="ctlModel" fc="CF"/>
			<DA name="sboTimeout" bType="INT32U" fc="CF"/>
			<DA name="sboClass" bType="Enum" type="sboClass" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>SGCC MODEL:2012</Val>
			</DA>
		</DOType>
		<DOType id="2_GDNR_EXNSV_V1_SPS" cdc="SPS">
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>GDNR_MODEL:2010</Val>
			</DA>
		</DOType>
		<DOType id="2_GDNR_EXI_V1_MV" cdc="MV">
			<DA name="mag" bType="Struct" type="2_CN_AnalogueValue_I" dchg="true" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="db" bType="INT32U" fc="CF"/>
			<DA name="zeroDb" bType="INT32U" fc="CF"/>
			<DA name="rangeC" bType="Struct" type="2_CN_RangeConfig" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>GDNR_MODEL:2010</Val>
			</DA>
		</DOType>
		<DOType id="2_CN_DEL" cdc="DEL">
			<SDO name="phsAB" type="2_CN_CMV"/>
			<SDO name="phsBC" type="2_CN_CMV"/>
			<SDO name="phsCA" type="2_CN_CMV"/>
			<DA name="angRef" bType="Enum" type="angid" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="2_CN_CMV" cdc="CMV">
			<DA name="cVal" bType="Struct" type="2_CN_Vector" dchg="true" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subCVal" bType="Struct" type="2_CN_Vector" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="units" bType="Struct" type="2_CN_units" fc="CF"/>
			<DA name="db" bType="INT32U" fc="CF"/>
			<DA name="zeroDb" bType="INT32U" fc="CF"/>
			<DA name="rangeC" bType="Struct" type="2_CN_RangeConfig" fc="CF"/>
			<DA name="magSVC" bType="Struct" type="2_CN_ScaledValueConfig" fc="CF"/>
			<DA name="angSVC" bType="Struct" type="2_CN_ScaledValueConfig" fc="CF"/>
			<DA name="angRef" bType="Enum" type="angidCMV" fc="CF"/>
			<DA name="smpRate" bType="INT32U" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="2_CN_WYE_ALL" cdc="WYE">
			<SDO name="phsA" type="2_CN_CMV"/>
			<SDO name="phsB" type="2_CN_CMV"/>
			<SDO name="phsC" type="2_CN_CMV"/>
			<SDO name="neut" type="2_CN_CMV"/>
			<SDO name="net" type="2_CN_CMV"/>
			<SDO name="res" type="2_CN_CMV"/>
			<DA name="angRef" bType="Enum" type="angid" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="2_GDNR_V1_SEQ" cdc="SEQ">
			<SDO name="c1" type="2_CN_CMV"/>
			<SDO name="c2" type="2_CN_CMV"/>
			<SDO name="c3" type="2_CN_CMV"/>
			<DA name="seqT" bType="Enum" type="seqT" fc="MX"/>
			<DA name="phsRef" bType="Enum" type="phsid" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="2_CN_ACD" cdc="ACD">
			<DA name="general" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirGeneral" bType="Enum" type="dir" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="2_CN_ACT" cdc="ACT">
			<DA name="general" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="2_CN_ASG_SG_EX" cdc="ASG">
			<DA name="setMag" bType="Struct" type="2_CN_AnalogueValue" fc="SG"/>
			<DA name="units" bType="Struct" type="2_CN_units" fc="CF"/>
			<DA name="sVC" bType="Struct" type="2_CN_ScaledValueConfig" fc="CF"/>
			<DA name="minVal" bType="Struct" type="2_CN_AnalogueValue" fc="CF"/>
			<DA name="maxVal" bType="Struct" type="2_CN_AnalogueValue" fc="CF"/>
			<DA name="stepSize" bType="Struct" type="2_CN_AnalogueValue" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>SGCC MODEL:2012</Val>
			</DA>
		</DOType>
		<DOType id="2_CN_SPG_SG_EX" cdc="SPG">
			<DA name="setVal" bType="BOOLEAN" fc="SG"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>SGCC MODEL:2012</Val>
			</DA>
		</DOType>
		<DOType id="2_CN_ING_SG_EX" cdc="ING">
			<DA name="setVal" bType="INT32" fc="SG"/>
			<DA name="minVal" bType="INT32" fc="CF"/>
			<DA name="maxVal" bType="INT32" fc="CF"/>
			<DA name="stepSize" bType="INT32U" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>SGCC MODEL:2012</Val>
			</DA>
		</DOType>
		<DOType id="2_CN_ASG_SG" cdc="ASG">
			<DA name="setMag" bType="Struct" type="2_CN_AnalogueValue" fc="SG"/>
			<DA name="units" bType="Struct" type="2_CN_units" fc="CF"/>
			<DA name="sVC" bType="Struct" type="2_CN_ScaledValueConfig" fc="CF"/>
			<DA name="minVal" bType="Struct" type="2_CN_AnalogueValue" fc="CF"/>
			<DA name="maxVal" bType="Struct" type="2_CN_AnalogueValue" fc="CF"/>
			<DA name="stepSize" bType="Struct" type="2_CN_AnalogueValue" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="2_CN_ACT_3P" cdc="ACT">
			<DA name="general" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsA" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsB" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsC" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="neut" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="2_CN_ING_SG" cdc="ING">
			<DA name="setVal" bType="INT32" fc="SG"/>
			<DA name="minVal" bType="INT32" fc="CF"/>
			<DA name="maxVal" bType="INT32" fc="CF"/>
			<DA name="stepSize" bType="INT32U" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="2_GDNR_NSV_V1_SPS" cdc="SPS">
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
		</DOType>
		<DOType id="2_CN_LPL_EX" cdc="LPL">
			<DA name="vendor" bType="VisString255" fc="DC"/>
			<DA name="swRev" bType="VisString255" fc="DC"/>
			<DA name="d" bType="VisString255" fc="DC"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="lnNs" bType="VisString255" fc="EX">
				<Val>SGCC MODEL:2012</Val>
			</DA>
		</DOType>
		<DOType id="2_CN_MV_EX" cdc="MV">
			<DA name="mag" bType="Struct" type="2_CN_AnalogueValue" dchg="true" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subMag" bType="Struct" type="2_CN_AnalogueValue" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="units" bType="Struct" type="2_CN_units" fc="CF"/>
			<DA name="db" bType="INT32U" fc="CF"/>
			<DA name="zeroDb" bType="INT32U" fc="CF"/>
			<DA name="sVC" bType="Struct" type="2_CN_ScaledValueConfig" fc="CF"/>
			<DA name="rangeC" bType="Struct" type="2_CN_RangeConfig" fc="CF"/>
			<DA name="smpRate" bType="INT32U" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>SGCC MODEL:2012</Val>
			</DA>
		</DOType>
		<DOType id="2_GDNR_NCO_V1_DPC" cdc="DPC">
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
		<DOType id="2_CN_SAV_EX" cdc="SAV">
			<DA name="instMag" bType="Struct" type="2_CN_AnalogueValue_I" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="units" bType="Struct" type="2_CN_units" fc="CF"/>
			<DA name="sVC" bType="Struct" type="2_CN_ScaledValueConfig" fc="CF"/>
			<DA name="min" bType="Struct" type="2_CN_AnalogueValue_I" fc="CF"/>
			<DA name="max" bType="Struct" type="2_CN_AnalogueValue_I" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>SGCC MODEL:2012</Val>
			</DA>
		</DOType>
		<DOType id="2_GDNR_EX_V1_SAV" cdc="SAV">
			<DA name="instMag" bType="Struct" type="2_CN_AnalogueValue_I" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="units" bType="Struct" type="2_CN_units" fc="CF"/>
			<DA name="sVC" bType="Struct" type="2_CN_ScaledValueConfig" fc="CF"/>
			<DA name="min" bType="Struct" type="2_CN_AnalogueValue" fc="CF"/>
			<DA name="max" bType="Struct" type="2_CN_AnalogueValue" fc="CF"/>
			<DA name="dU" bType="Unicode255" fc="DC"/>
			<DA name="dataNs" bType="VisString255" fc="EX">
				<Val>GDNR_MODEL:2010</Val>
			</DA>
		</DOType>
		<DAType id="1_CN_AnalogueValue_I">
			<BDA name="i" bType="INT32"/>
		</DAType>
		<DAType id="1_CN_SBOw_Oper_SDPC">
			<BDA name="ctlVal" bType="BOOLEAN"/>
			<BDA name="origin" bType="Struct" type="1_CN_Originator"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<BDA name="Check" bType="Check"/>
		</DAType>
		<DAType id="1_CN_Cancel_SDPC">
			<BDA name="ctlVal" bType="BOOLEAN"/>
			<BDA name="origin" bType="Struct" type="1_CN_Originator"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
		</DAType>
		<DAType id="1_CN_Originator">
			<BDA name="orCat" bType="Enum" type="orCategory"/>
			<BDA name="orIdent" bType="Octet64"/>
		</DAType>
		<DAType id="1_CN_PulseConfig">
			<BDA name="cmdQual" bType="Enum" type="PulseConfigCmdQual"/>
			<BDA name="onDur" bType="INT32U"/>
			<BDA name="offDur" bType="INT32U"/>
			<BDA name="numPls" bType="INT32U"/>
		</DAType>
		<DAType id="1_CN_AnalogueValue">
			<BDA name="f" bType="FLOAT32"/>
		</DAType>
		<DAType id="1_CN_ScaledValueConfig">
			<BDA name="scaleFactor" bType="FLOAT32"/>
			<BDA name="offset" bType="FLOAT32"/>
		</DAType>
		<DAType id="1_CN_units">
			<BDA name="SIUnit" bType="Enum" type="SIUnit"/>
			<BDA name="multiplier" bType="Enum" type="multiplier"/>
		</DAType>
		<DAType id="1_CN_RangeConfig">
			<BDA name="hhLim" bType="Struct" type="1_CN_AnalogueValue"/>
			<BDA name="hLim" bType="Struct" type="1_CN_AnalogueValue"/>
			<BDA name="lLim" bType="Struct" type="1_CN_AnalogueValue"/>
			<BDA name="llLim" bType="Struct" type="1_CN_AnalogueValue"/>
			<BDA name="min" bType="Struct" type="1_CN_AnalogueValue"/>
			<BDA name="max" bType="Struct" type="1_CN_AnalogueValue"/>
		</DAType>
		<DAType id="2_CN_AnalogueValue_I">
			<BDA name="i" bType="INT32"/>
		</DAType>
		<DAType id="2_CN_SBOw_Oper_SDPC">
			<BDA name="ctlVal" bType="BOOLEAN"/>
			<BDA name="origin" bType="Struct" type="2_CN_Originator"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<BDA name="Check" bType="Check"/>
		</DAType>
		<DAType id="2_CN_Cancel_SDPC">
			<BDA name="ctlVal" bType="BOOLEAN"/>
			<BDA name="origin" bType="Struct" type="2_CN_Originator"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
		</DAType>
		<DAType id="2_CN_Originator">
			<BDA name="orCat" bType="Enum" type="orCategory"/>
			<BDA name="orIdent" bType="Octet64"/>
		</DAType>
		<DAType id="2_CN_PulseConfig">
			<BDA name="cmdQual" bType="Enum" type="PulseConfigCmdQual"/>
			<BDA name="onDur" bType="INT32U"/>
			<BDA name="offDur" bType="INT32U"/>
			<BDA name="numPls" bType="INT32U"/>
		</DAType>
		<DAType id="2_CN_AnalogueValue">
			<BDA name="f" bType="FLOAT32"/>
		</DAType>
		<DAType id="2_CN_ScaledValueConfig">
			<BDA name="scaleFactor" bType="FLOAT32"/>
			<BDA name="offset" bType="FLOAT32"/>
		</DAType>
		<DAType id="2_CN_units">
			<BDA name="SIUnit" bType="Enum" type="SIUnit"/>
			<BDA name="multiplier" bType="Enum" type="multiplier"/>
		</DAType>
		<DAType id="2_CN_RangeConfig">
			<BDA name="hhLim" bType="Struct" type="2_CN_AnalogueValue"/>
			<BDA name="hLim" bType="Struct" type="2_CN_AnalogueValue"/>
			<BDA name="lLim" bType="Struct" type="2_CN_AnalogueValue"/>
			<BDA name="llLim" bType="Struct" type="2_CN_AnalogueValue"/>
			<BDA name="min" bType="Struct" type="2_CN_AnalogueValue"/>
			<BDA name="max" bType="Struct" type="2_CN_AnalogueValue"/>
		</DAType>
		<DAType id="2_CN_Vector">
			<BDA name="mag" bType="Struct" type="2_CN_AnalogueValue"/>
			<BDA name="ang" bType="Struct" type="2_CN_AnalogueValue"/>
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
		<EnumType id="SIUnit">
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
		<EnumType id="PulseConfigCmdQual">
			<EnumVal ord="0">pulse</EnumVal>
			<EnumVal ord="1">persistent</EnumVal>
		</EnumType>
		<EnumType id="sboClass">
			<EnumVal ord="0">operate-once</EnumVal>
			<EnumVal ord="1">operate-many</EnumVal>
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
		<EnumType id="dir">
			<EnumVal ord="0">unknown</EnumVal>
			<EnumVal ord="1">forward</EnumVal>
			<EnumVal ord="2">backward</EnumVal>
			<EnumVal ord="3">both</EnumVal>
		</EnumType>
		<EnumType id="CBOpCap">
			<EnumVal ord="1">None</EnumVal>
			<EnumVal ord="2">Open</EnumVal>
			<EnumVal ord="3">Close-Open</EnumVal>
			<EnumVal ord="4">Open-Close-Open</EnumVal>
			<EnumVal ord="5">Close-Open-Close-Open</EnumVal>
		</EnumType>
		<EnumType id="SwOpCap">
			<EnumVal ord="1">None</EnumVal>
			<EnumVal ord="2">Open</EnumVal>
			<EnumVal ord="3">Close</EnumVal>
			<EnumVal ord="4">Open and Close</EnumVal>
		</EnumType>
		<EnumType id="SwTyp">
			<EnumVal ord="1">Load Break</EnumVal>
			<EnumVal ord="2">Disconnector</EnumVal>
			<EnumVal ord="3">Earthing Switch</EnumVal>
			<EnumVal ord="4">High Speed Earthing Switch</EnumVal>
		</EnumType>
	</DataTypeTemplates>
</SCL>
