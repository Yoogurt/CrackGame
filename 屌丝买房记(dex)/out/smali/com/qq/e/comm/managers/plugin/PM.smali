.class public Lcom/qq/e/comm/managers/plugin/PM;
.super Ljava/lang/Object;


# static fields
.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private d:I

.field private e:Ldalvik/system/DexClassLoader;

.field private f:Ljava/io/RandomAccessFile;

.field private g:Ljava/nio/channels/FileLock;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qq/e/comm/managers/plugin/PM$1;

    invoke-direct {v0}, Lcom/qq/e/comm/managers/plugin/PM$1;-><init>()V

    sput-object v0, Lcom/qq/e/comm/managers/plugin/PM;->i:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->h:Z

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "PluginFile:\t"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/io/File;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Ldalvik/system/DexClassLoader;

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Landroid/content/Context;

    const-string v3, "e_qq_com_dex"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:Ldalvik/system/DexClassLoader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "exception while init plugin class loader"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:Ldalvik/system/DexClassLoader;

    goto :goto_1
.end method

.method private a()Z
    .locals 7

    const/16 v6, 0x21b

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TimeStap_BEFORE_PLUGIN_INIT:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->h:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/qq/e/comm/managers/plugin/c;

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/c;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/qq/e/comm/managers/plugin/c;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/qq/e/comm/managers/plugin/c;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v2}, Lcom/qq/e/comm/managers/plugin/c;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/c;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/qq/e/comm/managers/plugin/c;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/qq/e/comm/managers/plugin/c;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NextExist,Updated="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/qq/e/comm/managers/plugin/c;

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/c;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/qq/e/comm/managers/plugin/c;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/qq/e/comm/managers/plugin/c;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v2}, Lcom/qq/e/comm/managers/plugin/c;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/qq/e/comm/managers/plugin/c;->b()I

    move-result v3

    if-ge v3, v6, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "last updated plugin version ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";asset plugin version=539"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    :cond_1
    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->h:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_5

    move v2, v0

    :goto_1
    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TimeStap_AFTER_PLUGIN_INIT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    :goto_2
    return v0

    :cond_4
    :try_start_1
    invoke-virtual {v2}, Lcom/qq/e/comm/managers/plugin/c;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/qq/e/comm/managers/plugin/c;->b()I

    move-result v2

    iput v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:I

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/c;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/io/File;

    move v2, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/c;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/qq/e/comm/managers/plugin/c;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Ruul/MPSJ1h8WEX7PqGVISQj3bw5suNpQ2dX8da22QoABf+jVGTwHradjn/esKx3ov5VaUoznVaSef6VKkELoAoWFPIIEAgVwgFNSQnP7ofIyPi1F3e3bhxmaNumusJAkSTahhPKNP4kv47CwFNAWL4PC7618IddSfxOqnS73KQ="

    iput-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/c;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/io/File;

    const/16 v2, 0x21b

    iput v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:I

    move v2, v1

    goto :goto_1

    :cond_6
    const-string v2, "Fail to prepair Defult plugin "

    invoke-static {v2}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "Exception while init plugin manager"

    invoke-static {v2, v1}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TimeStap_AFTER_PLUGIN_INIT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TimeStap_AFTER_PLUGIN_INIT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    throw v0
.end method

.method private b()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    const-string v3, "e_qq_com_plugin"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v3, "update_lc"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    const-string v1, "lock"

    invoke-static {v1, v2}, Lcom/qq/e/comm/util/StringUtil;->writeTo(Ljava/lang/String;Ljava/io/File;)V

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->f:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->g:Ljava/nio/channels/FileLock;

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->g:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->f:Ljava/io/RandomAccessFile;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getFactory(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/managers/plugin/b;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetFactoryInstaceforInterface:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:Ldalvik/system/DexClassLoader;

    if-nez v1, :cond_0

    new-instance v0, Lcom/qq/e/comm/managers/plugin/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to init GDTADPLugin,PluginClassLoader == null;while loading factory impl for:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qq/e/comm/managers/plugin/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/qq/e/comm/managers/plugin/PM;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/qq/e/comm/managers/plugin/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "factory  implemention name is not specified for interface:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qq/e/comm/managers/plugin/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/qq/e/comm/managers/plugin/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to getfactory implement instance for interface:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/qq/e/comm/managers/plugin/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method public getLocalSig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPOFactory()Lcom/qq/e/comm/pi/POFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/managers/plugin/b;
        }
    .end annotation

    const-class v0, Lcom/qq/e/comm/pi/POFactory;

    invoke-virtual {p0, v0}, Lcom/qq/e/comm/managers/plugin/PM;->getFactory(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/POFactory;

    return-object v0
.end method

.method public getPluginVersion()I
    .locals 1

    iget v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:I

    return v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/qq/e/comm/managers/plugin/a;

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qq/e/comm/managers/plugin/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/qq/e/comm/managers/plugin/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
