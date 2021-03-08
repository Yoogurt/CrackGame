.class Lcom/zf/dsmfj/MaiFangJi$30;
.super Ljava/lang/Thread;
.source "MaiFangJi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/MaiFangJi;->GetDailyGift()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/MaiFangJi;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/MaiFangJi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$30;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    .line 1317
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 48

    .prologue
    .line 1319
    const/16 v29, 0x0

    .line 1320
    .local v29, "server":Ljava/net/Socket;
    const/16 v17, 0x0

    .line 1321
    .local v17, "in":Ljava/io/BufferedReader;
    const/16 v26, 0x0

    .line 1322
    .local v26, "out":Ljava/io/PrintWriter;
    const-string v31, ""

    .line 1323
    .local v31, "servertime":Ljava/lang/String;
    const-string v36, ""

    .line 1324
    .local v36, "url":Ljava/lang/String;
    const-string v3, ""

    .line 1325
    .local v3, "ad":Ljava/lang/String;
    const-string v6, ""

    .line 1326
    .local v6, "badadnbr":Ljava/lang/String;
    const-string v34, ""

    .line 1327
    .local v34, "sharemsg":Ljava/lang/String;
    const-string v20, ""

    .line 1328
    .local v20, "judgelevel":Ljava/lang/String;
    const-string v33, ""

    .line 1329
    .local v33, "sharegiftshouldgive":Ljava/lang/String;
    const-string v19, ""

    .line 1330
    .local v19, "judgegiftshouldgive":Ljava/lang/String;
    const-string v15, ""

    .line 1331
    .local v15, "hintenable":Ljava/lang/String;
    const-string v25, ""

    .line 1332
    .local v25, "normalsharegiftleft":Ljava/lang/String;
    const-string v24, ""

    .line 1333
    .local v24, "normalsharegift":Ljava/lang/String;
    const-string v10, ""

    .line 1334
    .local v10, "crazyenable":Ljava/lang/String;
    const-string v37, ""

    .line 1335
    .local v37, "videogift":Ljava/lang/String;
    const-string v21, ""

    .line 1337
    .local v21, "moregameurl":Ljava/lang/String;
    :try_start_0
    new-instance v30, Ljava/net/Socket;

    const-string v44, "www.games1717.com"

    const v45, 0xca05

    move-object/from16 v0, v30

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    .end local v29    # "server":Ljava/net/Socket;
    .local v30, "server":Ljava/net/Socket;
    const/16 v44, 0x2710

    :try_start_1
    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1339
    new-instance v27, Ljava/io/PrintWriter;

    new-instance v44, Ljava/io/BufferedWriter;

    new-instance v45, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {v30 .. v30}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v46

    const-string v47, "utf8"

    invoke-direct/range {v45 .. v47}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct/range {v44 .. v45}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/16 v45, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1340
    .end local v26    # "out":Ljava/io/PrintWriter;
    .local v27, "out":Ljava/io/PrintWriter;
    :try_start_2
    new-instance v18, Ljava/io/BufferedReader;

    new-instance v44, Ljava/io/InputStreamReader;

    invoke-virtual/range {v30 .. v30}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v45

    const-string v46, "utf8"

    invoke-direct/range {v44 .. v46}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1341
    .end local v17    # "in":Ljava/io/BufferedReader;
    .local v18, "in":Ljava/io/BufferedReader;
    :try_start_3
    const-string v44, "13"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$30;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v44, v0

    const-string v45, "phone"

    invoke-virtual/range {v44 .. v45}, Lcom/zf/dsmfj/MaiFangJi;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/telephony/TelephonyManager;

    .line 1343
    .local v35, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1344
    .local v16, "imei":Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1345
    const-string v44, "taptap"

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$30;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/MaiFangJi;->access$6(Lcom/zf/dsmfj/MaiFangJi;)Lcom/zf/dsmfj/MaiFangJi;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/zf/dsmfj/MaiFangJi;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$30;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/zf/dsmfj/MaiFangJi;->access$6(Lcom/zf/dsmfj/MaiFangJi;)Lcom/zf/dsmfj/MaiFangJi;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/zf/dsmfj/MaiFangJi;->getPackageName()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x0

    invoke-virtual/range {v44 .. v46}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v28

    .line 1348
    .local v28, "pi":Landroid/content/pm/PackageInfo;
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1350
    const-string v44, "gametotal"

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1351
    .local v14, "gametotal":Ljava/lang/String;
    const-string v44, ""

    move-object/from16 v0, v44

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_0

    .line 1352
    const-string v14, "0"

    .line 1353
    :cond_0
    invoke-static {v14}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1355
    const-string v44, "gamebest"

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1356
    .local v12, "gamebest":Ljava/lang/String;
    const-string v44, ""

    move-object/from16 v0, v44

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_1

    .line 1357
    const-string v12, "-1"

    .line 1358
    :cond_1
    invoke-static {v12}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1360
    const-string v44, "gamesucc"

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1361
    .local v13, "gamesucc":Ljava/lang/String;
    const-string v44, ""

    move-object/from16 v0, v44

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_2

    .line 1362
    const-string v13, "0"

    .line 1363
    :cond_2
    invoke-static {v13}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1365
    const-string v44, "way1buy"

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1366
    .local v38, "way1buy":Ljava/lang/String;
    const-string v44, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_3

    .line 1367
    const-string v38, "0"

    .line 1368
    :cond_3
    invoke-static/range {v38 .. v38}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1370
    const-string v44, "way2buy"

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1371
    .local v40, "way2buy":Ljava/lang/String;
    const-string v44, ""

    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_4

    .line 1372
    const-string v40, "0"

    .line 1373
    :cond_4
    invoke-static/range {v40 .. v40}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1375
    const-string v44, "way3buy"

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1376
    .local v42, "way3buy":Ljava/lang/String;
    const-string v44, ""

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_5

    .line 1377
    const-string v42, "0"

    .line 1378
    :cond_5
    invoke-static/range {v42 .. v42}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1380
    const-string v44, "way1click"

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1381
    .local v39, "way1click":Ljava/lang/String;
    const-string v44, ""

    move-object/from16 v0, v39

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_6

    .line 1382
    const-string v39, "0"

    .line 1383
    :cond_6
    invoke-static/range {v39 .. v39}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1385
    const-string v44, "way2click"

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1386
    .local v41, "way2click":Ljava/lang/String;
    const-string v44, ""

    move-object/from16 v0, v41

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_7

    .line 1387
    const-string v41, "0"

    .line 1388
    :cond_7
    invoke-static/range {v41 .. v41}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1390
    const-string v44, "way3click"

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1391
    .local v43, "way3click":Ljava/lang/String;
    const-string v44, ""

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_8

    .line 1392
    const-string v43, "0"

    .line 1393
    :cond_8
    invoke-static/range {v43 .. v43}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1395
    const-string v44, "addcash"

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1396
    .local v4, "addcash":Ljava/lang/String;
    const-string v44, ""

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_9

    .line 1397
    const-string v4, "0"

    .line 1398
    :cond_9
    invoke-static {v4}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    const-string v44, "moretime"

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1401
    .local v22, "moretime":Ljava/lang/String;
    const-string v44, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_a

    .line 1402
    const-string v22, "0"

    .line 1403
    :cond_a
    invoke-static/range {v22 .. v22}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    const-string v44, "share"

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1406
    .local v32, "share":Ljava/lang/String;
    const-string v44, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_b

    .line 1407
    const-string v32, "0"

    .line 1408
    :cond_b
    invoke-static/range {v32 .. v32}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1410
    const-string v44, "crazy"

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1411
    .local v9, "crazy":Ljava/lang/String;
    const-string v44, ""

    move-object/from16 v0, v44

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_c

    .line 1412
    const-string v9, "0"

    .line 1413
    :cond_c
    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1415
    const-string v44, "buynbr"

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1416
    .local v8, "buynbr":Ljava/lang/String;
    const-string v44, ""

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_d

    .line 1417
    const-string v8, "0"

    .line 1418
    :cond_d
    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1420
    const-string v44, "buymoney"

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1421
    .local v7, "buymoney":Ljava/lang/String;
    const-string v44, ""

    move-object/from16 v0, v44

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_e

    .line 1422
    const-string v7, "0"

    .line 1423
    :cond_e
    invoke-static {v7}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1425
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v31

    .line 1426
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v36

    .line 1427
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 1428
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 1429
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v34

    .line 1430
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$30;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v44, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/zf/dsmfj/MaiFangJi;->access$12(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$30;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v44, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/zf/dsmfj/MaiFangJi;->access$51(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$30;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v44, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/zf/dsmfj/MaiFangJi;->access$52(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 1434
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v33

    .line 1435
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .line 1436
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 1437
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v25

    .line 1438
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    .line 1439
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 1440
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v37

    .line 1441
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$30;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/MaiFangJi;->access$53(Lcom/zf/dsmfj/MaiFangJi;)Landroid/os/Handler;

    move-result-object v44

    if-eqz v44, :cond_f

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$30;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/MaiFangJi;->access$53(Lcom/zf/dsmfj/MaiFangJi;)Landroid/os/Handler;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v23

    .line 1444
    .local v23, "msg":Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1445
    .local v5, "b":Landroid/os/Bundle;
    const-string v44, "servertime"

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    const-string v44, "url"

    move-object/from16 v0, v44

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    const-string v44, "ad"

    move-object/from16 v0, v44

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    const-string v44, "badadnbr"

    move-object/from16 v0, v44

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    const-string v44, "sharemsg"

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    const-string v44, "judgelevel"

    move-object/from16 v0, v44

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    const-string v44, "sharegiftshouldgive"

    move-object/from16 v0, v44

    move-object/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    const-string v44, "judgegiftshouldgive"

    move-object/from16 v0, v44

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    const-string v44, "hintenable"

    move-object/from16 v0, v44

    invoke-virtual {v5, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    const-string v44, "normalsharegiftleft"

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    const-string v44, "normalsharegift"

    move-object/from16 v0, v44

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    const-string v44, "crazyenable"

    move-object/from16 v0, v44

    invoke-virtual {v5, v0, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    const-string v44, "videogift"

    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    const-string v44, "moregameurl"

    move-object/from16 v0, v44

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$30;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/zf/dsmfj/MaiFangJi;->access$53(Lcom/zf/dsmfj/MaiFangJi;)Landroid/os/Handler;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1465
    .end local v5    # "b":Landroid/os/Bundle;
    .end local v23    # "msg":Landroid/os/Message;
    :cond_f
    if-eqz v18, :cond_10

    .line 1467
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1473
    :cond_10
    :goto_0
    if-eqz v27, :cond_11

    .line 1474
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V

    .line 1476
    :cond_11
    if-eqz v30, :cond_18

    .line 1478
    :try_start_5
    invoke-virtual/range {v30 .. v30}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move-object/from16 v26, v27

    .end local v27    # "out":Ljava/io/PrintWriter;
    .restart local v26    # "out":Ljava/io/PrintWriter;
    move-object/from16 v17, v18

    .end local v18    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "in":Ljava/io/BufferedReader;
    move-object/from16 v29, v30

    .line 1485
    .end local v4    # "addcash":Ljava/lang/String;
    .end local v7    # "buymoney":Ljava/lang/String;
    .end local v8    # "buynbr":Ljava/lang/String;
    .end local v9    # "crazy":Ljava/lang/String;
    .end local v12    # "gamebest":Ljava/lang/String;
    .end local v13    # "gamesucc":Ljava/lang/String;
    .end local v14    # "gametotal":Ljava/lang/String;
    .end local v16    # "imei":Ljava/lang/String;
    .end local v22    # "moretime":Ljava/lang/String;
    .end local v28    # "pi":Landroid/content/pm/PackageInfo;
    .end local v30    # "server":Ljava/net/Socket;
    .end local v32    # "share":Ljava/lang/String;
    .end local v35    # "tm":Landroid/telephony/TelephonyManager;
    .end local v38    # "way1buy":Ljava/lang/String;
    .end local v39    # "way1click":Ljava/lang/String;
    .end local v40    # "way2buy":Ljava/lang/String;
    .end local v41    # "way2click":Ljava/lang/String;
    .end local v42    # "way3buy":Ljava/lang/String;
    .end local v43    # "way3click":Ljava/lang/String;
    .restart local v29    # "server":Ljava/net/Socket;
    :cond_12
    :goto_1
    const-string v44, "buddy"

    const-string v45, "eeeeeeeeeeeeeeee"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    return-void

    .line 1462
    :catch_0
    move-exception v11

    .line 1463
    .local v11, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1465
    if-eqz v17, :cond_13

    .line 1467
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1473
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_13
    :goto_3
    if-eqz v26, :cond_14

    .line 1474
    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintWriter;->close()V

    .line 1476
    :cond_14
    if-eqz v29, :cond_12

    .line 1478
    :try_start_8
    invoke-virtual/range {v29 .. v29}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 1479
    :catch_1
    move-exception v11

    .line 1481
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1468
    .local v11, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v11

    .line 1470
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1464
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v44

    .line 1465
    :goto_4
    if-eqz v17, :cond_15

    .line 1467
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1473
    :cond_15
    :goto_5
    if-eqz v26, :cond_16

    .line 1474
    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintWriter;->close()V

    .line 1476
    :cond_16
    if-eqz v29, :cond_17

    .line 1478
    :try_start_a
    invoke-virtual/range {v29 .. v29}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 1484
    :cond_17
    :goto_6
    throw v44

    .line 1468
    :catch_3
    move-exception v11

    .line 1470
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1479
    .end local v11    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v11

    .line 1481
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1468
    .end local v11    # "e":Ljava/io/IOException;
    .end local v17    # "in":Ljava/io/BufferedReader;
    .end local v26    # "out":Ljava/io/PrintWriter;
    .end local v29    # "server":Ljava/net/Socket;
    .restart local v4    # "addcash":Ljava/lang/String;
    .restart local v7    # "buymoney":Ljava/lang/String;
    .restart local v8    # "buynbr":Ljava/lang/String;
    .restart local v9    # "crazy":Ljava/lang/String;
    .restart local v12    # "gamebest":Ljava/lang/String;
    .restart local v13    # "gamesucc":Ljava/lang/String;
    .restart local v14    # "gametotal":Ljava/lang/String;
    .restart local v16    # "imei":Ljava/lang/String;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    .restart local v22    # "moretime":Ljava/lang/String;
    .restart local v27    # "out":Ljava/io/PrintWriter;
    .restart local v28    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v30    # "server":Ljava/net/Socket;
    .restart local v32    # "share":Ljava/lang/String;
    .restart local v35    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v38    # "way1buy":Ljava/lang/String;
    .restart local v39    # "way1click":Ljava/lang/String;
    .restart local v40    # "way2buy":Ljava/lang/String;
    .restart local v41    # "way2click":Ljava/lang/String;
    .restart local v42    # "way3buy":Ljava/lang/String;
    .restart local v43    # "way3click":Ljava/lang/String;
    :catch_5
    move-exception v11

    .line 1470
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1479
    .end local v11    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v11

    .line 1481
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .end local v11    # "e":Ljava/io/IOException;
    :cond_18
    move-object/from16 v26, v27

    .end local v27    # "out":Ljava/io/PrintWriter;
    .restart local v26    # "out":Ljava/io/PrintWriter;
    move-object/from16 v17, v18

    .end local v18    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "in":Ljava/io/BufferedReader;
    move-object/from16 v29, v30

    .end local v30    # "server":Ljava/net/Socket;
    .restart local v29    # "server":Ljava/net/Socket;
    goto :goto_1

    .line 1464
    .end local v4    # "addcash":Ljava/lang/String;
    .end local v7    # "buymoney":Ljava/lang/String;
    .end local v8    # "buynbr":Ljava/lang/String;
    .end local v9    # "crazy":Ljava/lang/String;
    .end local v12    # "gamebest":Ljava/lang/String;
    .end local v13    # "gamesucc":Ljava/lang/String;
    .end local v14    # "gametotal":Ljava/lang/String;
    .end local v16    # "imei":Ljava/lang/String;
    .end local v22    # "moretime":Ljava/lang/String;
    .end local v28    # "pi":Landroid/content/pm/PackageInfo;
    .end local v29    # "server":Ljava/net/Socket;
    .end local v32    # "share":Ljava/lang/String;
    .end local v35    # "tm":Landroid/telephony/TelephonyManager;
    .end local v38    # "way1buy":Ljava/lang/String;
    .end local v39    # "way1click":Ljava/lang/String;
    .end local v40    # "way2buy":Ljava/lang/String;
    .end local v41    # "way2click":Ljava/lang/String;
    .end local v42    # "way3buy":Ljava/lang/String;
    .end local v43    # "way3click":Ljava/lang/String;
    .restart local v30    # "server":Ljava/net/Socket;
    :catchall_1
    move-exception v44

    move-object/from16 v29, v30

    .end local v30    # "server":Ljava/net/Socket;
    .restart local v29    # "server":Ljava/net/Socket;
    goto :goto_4

    .end local v26    # "out":Ljava/io/PrintWriter;
    .end local v29    # "server":Ljava/net/Socket;
    .restart local v27    # "out":Ljava/io/PrintWriter;
    .restart local v30    # "server":Ljava/net/Socket;
    :catchall_2
    move-exception v44

    move-object/from16 v26, v27

    .end local v27    # "out":Ljava/io/PrintWriter;
    .restart local v26    # "out":Ljava/io/PrintWriter;
    move-object/from16 v29, v30

    .end local v30    # "server":Ljava/net/Socket;
    .restart local v29    # "server":Ljava/net/Socket;
    goto :goto_4

    .end local v17    # "in":Ljava/io/BufferedReader;
    .end local v26    # "out":Ljava/io/PrintWriter;
    .end local v29    # "server":Ljava/net/Socket;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    .restart local v27    # "out":Ljava/io/PrintWriter;
    .restart local v30    # "server":Ljava/net/Socket;
    :catchall_3
    move-exception v44

    move-object/from16 v26, v27

    .end local v27    # "out":Ljava/io/PrintWriter;
    .restart local v26    # "out":Ljava/io/PrintWriter;
    move-object/from16 v17, v18

    .end local v18    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "in":Ljava/io/BufferedReader;
    move-object/from16 v29, v30

    .end local v30    # "server":Ljava/net/Socket;
    .restart local v29    # "server":Ljava/net/Socket;
    goto :goto_4

    .line 1462
    .end local v29    # "server":Ljava/net/Socket;
    .restart local v30    # "server":Ljava/net/Socket;
    :catch_7
    move-exception v11

    move-object/from16 v29, v30

    .end local v30    # "server":Ljava/net/Socket;
    .restart local v29    # "server":Ljava/net/Socket;
    goto :goto_2

    .end local v26    # "out":Ljava/io/PrintWriter;
    .end local v29    # "server":Ljava/net/Socket;
    .restart local v27    # "out":Ljava/io/PrintWriter;
    .restart local v30    # "server":Ljava/net/Socket;
    :catch_8
    move-exception v11

    move-object/from16 v26, v27

    .end local v27    # "out":Ljava/io/PrintWriter;
    .restart local v26    # "out":Ljava/io/PrintWriter;
    move-object/from16 v29, v30

    .end local v30    # "server":Ljava/net/Socket;
    .restart local v29    # "server":Ljava/net/Socket;
    goto :goto_2

    .end local v17    # "in":Ljava/io/BufferedReader;
    .end local v26    # "out":Ljava/io/PrintWriter;
    .end local v29    # "server":Ljava/net/Socket;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    .restart local v27    # "out":Ljava/io/PrintWriter;
    .restart local v30    # "server":Ljava/net/Socket;
    :catch_9
    move-exception v11

    move-object/from16 v26, v27

    .end local v27    # "out":Ljava/io/PrintWriter;
    .restart local v26    # "out":Ljava/io/PrintWriter;
    move-object/from16 v17, v18

    .end local v18    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "in":Ljava/io/BufferedReader;
    move-object/from16 v29, v30

    .end local v30    # "server":Ljava/net/Socket;
    .restart local v29    # "server":Ljava/net/Socket;
    goto :goto_2
.end method
