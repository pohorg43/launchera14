.class public Lcom/oplus/log/core/LoganConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/log/core/LoganConfig$Builder;
    }
.end annotation


# static fields
.field private static final DAYS:J = 0x5265c00L

.field private static final DEFAULT_DAY:J = 0x240c8400L

.field private static final DEFAULT_FILE_SIZE:J = 0x800000L

.field private static final DEFAULT_MIN_SDCARD_SIZE:J = 0x3200000L

.field public static final DEFAULT_QUEUE:I = 0x1f4

.field private static final M:J = 0x100000L

.field public static final MIN_SIZE_QUEUE:I = 0xc8


# instance fields
.field public dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

.field public mCachePath:Ljava/lang/String;

.field public mDay:J

.field public mEncryptIv16:[B

.field public mEncryptKey16:[B

.field public mFileNamePrefix:Ljava/lang/String;

.field public mMaxFile:J

.field public mMaxQueue:J

.field public mMinSDCard:J

.field public mPathPath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/log/core/LoganConfig;->mFileNamePrefix:Ljava/lang/String;

    const-wide/32 v0, 0x800000

    iput-wide v0, p0, Lcom/oplus/log/core/LoganConfig;->mMaxFile:J

    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/oplus/log/core/LoganConfig;->mDay:J

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/oplus/log/core/LoganConfig;->mMaxQueue:J

    const-wide/32 v0, 0x3200000

    iput-wide v0, p0, Lcom/oplus/log/core/LoganConfig;->mMinSDCard:J

    const-string v0, "0123456789012345"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/log/core/LoganConfig;->mEncryptKey16:[B

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/core/LoganConfig;->mEncryptIv16:[B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/log/core/LoganConfig$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/log/core/LoganConfig;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/oplus/log/core/LoganConfig;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/log/core/LoganConfig;->setCachePath(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/oplus/log/core/LoganConfig;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/log/core/LoganConfig;->setPathPath(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/oplus/log/core/LoganConfig;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/log/core/LoganConfig;->setMaxFile(J)V

    return-void
.end method

.method public static synthetic access$400(Lcom/oplus/log/core/LoganConfig;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/log/core/LoganConfig;->setMinSDCard(J)V

    return-void
.end method

.method public static synthetic access$500(Lcom/oplus/log/core/LoganConfig;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/log/core/LoganConfig;->setDay(J)V

    return-void
.end method

.method public static synthetic access$600(Lcom/oplus/log/core/LoganConfig;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/log/core/LoganConfig;->setEncryptKey16([B)V

    return-void
.end method

.method public static synthetic access$700(Lcom/oplus/log/core/LoganConfig;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/log/core/LoganConfig;->setEncryptIV16([B)V

    return-void
.end method

.method public static synthetic access$800(Lcom/oplus/log/core/LoganConfig;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/log/core/LoganConfig;->setFileNamePrefix(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/oplus/log/core/LoganConfig;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/log/core/LoganConfig;->setMaxQueue(J)V

    return-void
.end method

.method private setCachePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/LoganConfig;->mCachePath:Ljava/lang/String;

    return-void
.end method

.method private setDay(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/log/core/LoganConfig;->mDay:J

    return-void
.end method

.method private setEncryptIV16([B)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/LoganConfig;->mEncryptIv16:[B

    return-void
.end method

.method private setEncryptKey16([B)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/LoganConfig;->mEncryptKey16:[B

    return-void
.end method

.method private setFileNamePrefix(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/LoganConfig;->mFileNamePrefix:Ljava/lang/String;

    return-void
.end method

.method private setMaxFile(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/log/core/LoganConfig;->mMaxFile:J

    return-void
.end method

.method private setMaxQueue(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/log/core/LoganConfig;->mMaxQueue:J

    return-void
.end method

.method private setMinSDCard(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/log/core/LoganConfig;->mMinSDCard:J

    return-void
.end method

.method private setPathPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/LoganConfig;->mPathPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMaxQueue()J
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/core/LoganConfig;->dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/oplus/log/config/DynConfigManager;->getCacheQueueSize()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_a
    iget-wide v0, p0, Lcom/oplus/log/core/LoganConfig;->mMaxQueue:J

    return-wide v0
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lcom/oplus/log/core/LoganConfig;->mCachePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/oplus/log/core/LoganConfig;->mPathPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/oplus/log/core/LoganConfig;->mEncryptKey16:[B

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/oplus/log/core/LoganConfig;->mEncryptIv16:[B

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public setDynConfigManager(Lcom/oplus/log/config/DynConfigManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/LoganConfig;->dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    return-void
.end method
