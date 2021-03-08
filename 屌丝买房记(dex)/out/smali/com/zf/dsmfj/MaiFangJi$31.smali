.class Lcom/zf/dsmfj/MaiFangJi$31;
.super Ljava/lang/Thread;
.source "MaiFangJi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/MaiFangJi;->ReportClick()V
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$31;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    .line 1604
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 1606
    const/4 v6, 0x0

    .line 1607
    .local v6, "server":Ljava/net/Socket;
    const/4 v2, 0x0

    .line 1608
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 1610
    .local v4, "out":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v7, Ljava/net/Socket;

    const-string v9, "www.games1717.com"

    const v10, 0xca05

    invoke-direct {v7, v9, v10}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1611
    .end local v6    # "server":Ljava/net/Socket;
    .local v7, "server":Ljava/net/Socket;
    const/16 v9, 0x2710

    :try_start_1
    invoke-virtual {v7, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1612
    new-instance v5, Ljava/io/PrintWriter;

    new-instance v9, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    const-string v12, "utf8"

    invoke-direct {v10, v11, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v10, 0x1

    invoke-direct {v5, v9, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1613
    .end local v4    # "out":Ljava/io/PrintWriter;
    .local v5, "out":Ljava/io/PrintWriter;
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const-string v11, "utf8"

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1614
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_3
    const-string v9, "8"

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1615
    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$31;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Lcom/zf/dsmfj/MaiFangJi;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 1616
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1617
    .local v1, "imei":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1621
    if-eqz v3, :cond_0

    .line 1623
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1629
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 1630
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 1632
    :cond_1
    if-eqz v7, :cond_8

    .line 1634
    :try_start_5
    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move-object v4, v5

    .end local v5    # "out":Ljava/io/PrintWriter;
    .restart local v4    # "out":Ljava/io/PrintWriter;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 1641
    .end local v1    # "imei":Ljava/lang/String;
    .end local v7    # "server":Ljava/net/Socket;
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v6    # "server":Ljava/net/Socket;
    :cond_2
    :goto_1
    return-void

    .line 1618
    :catch_0
    move-exception v0

    .line 1619
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1621
    if-eqz v2, :cond_3

    .line 1623
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1629
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    .line 1630
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 1632
    :cond_4
    if-eqz v6, :cond_2

    .line 1634
    :try_start_8
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 1635
    :catch_1
    move-exception v0

    .line 1637
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1624
    .local v0, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1626
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1620
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 1621
    :goto_4
    if-eqz v2, :cond_5

    .line 1623
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1629
    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 1630
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 1632
    :cond_6
    if-eqz v6, :cond_7

    .line 1634
    :try_start_a
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 1640
    :cond_7
    :goto_6
    throw v9

    .line 1624
    :catch_3
    move-exception v0

    .line 1626
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1635
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 1637
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1624
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "out":Ljava/io/PrintWriter;
    .end local v6    # "server":Ljava/net/Socket;
    .restart local v1    # "imei":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "out":Ljava/io/PrintWriter;
    .restart local v7    # "server":Ljava/net/Socket;
    .restart local v8    # "tm":Landroid/telephony/TelephonyManager;
    :catch_5
    move-exception v0

    .line 1626
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1635
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 1637
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    move-object v4, v5

    .end local v5    # "out":Ljava/io/PrintWriter;
    .restart local v4    # "out":Ljava/io/PrintWriter;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "server":Ljava/net/Socket;
    .restart local v6    # "server":Ljava/net/Socket;
    goto :goto_1

    .line 1620
    .end local v1    # "imei":Ljava/lang/String;
    .end local v6    # "server":Ljava/net/Socket;
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v7    # "server":Ljava/net/Socket;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "server":Ljava/net/Socket;
    .restart local v6    # "server":Ljava/net/Socket;
    goto :goto_4

    .end local v4    # "out":Ljava/io/PrintWriter;
    .end local v6    # "server":Ljava/net/Socket;
    .restart local v5    # "out":Ljava/io/PrintWriter;
    .restart local v7    # "server":Ljava/net/Socket;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "out":Ljava/io/PrintWriter;
    .restart local v4    # "out":Ljava/io/PrintWriter;
    move-object v6, v7

    .end local v7    # "server":Ljava/net/Socket;
    .restart local v6    # "server":Ljava/net/Socket;
    goto :goto_4

    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "out":Ljava/io/PrintWriter;
    .end local v6    # "server":Ljava/net/Socket;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "out":Ljava/io/PrintWriter;
    .restart local v7    # "server":Ljava/net/Socket;
    :catchall_3
    move-exception v9

    move-object v4, v5

    .end local v5    # "out":Ljava/io/PrintWriter;
    .restart local v4    # "out":Ljava/io/PrintWriter;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "server":Ljava/net/Socket;
    .restart local v6    # "server":Ljava/net/Socket;
    goto :goto_4

    .line 1618
    .end local v6    # "server":Ljava/net/Socket;
    .restart local v7    # "server":Ljava/net/Socket;
    :catch_7
    move-exception v0

    move-object v6, v7

    .end local v7    # "server":Ljava/net/Socket;
    .restart local v6    # "server":Ljava/net/Socket;
    goto :goto_2

    .end local v4    # "out":Ljava/io/PrintWriter;
    .end local v6    # "server":Ljava/net/Socket;
    .restart local v5    # "out":Ljava/io/PrintWriter;
    .restart local v7    # "server":Ljava/net/Socket;
    :catch_8
    move-exception v0

    move-object v4, v5

    .end local v5    # "out":Ljava/io/PrintWriter;
    .restart local v4    # "out":Ljava/io/PrintWriter;
    move-object v6, v7

    .end local v7    # "server":Ljava/net/Socket;
    .restart local v6    # "server":Ljava/net/Socket;
    goto :goto_2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "out":Ljava/io/PrintWriter;
    .end local v6    # "server":Ljava/net/Socket;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "out":Ljava/io/PrintWriter;
    .restart local v7    # "server":Ljava/net/Socket;
    :catch_9
    move-exception v0

    move-object v4, v5

    .end local v5    # "out":Ljava/io/PrintWriter;
    .restart local v4    # "out":Ljava/io/PrintWriter;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "server":Ljava/net/Socket;
    .restart local v6    # "server":Ljava/net/Socket;
    goto :goto_2
.end method
