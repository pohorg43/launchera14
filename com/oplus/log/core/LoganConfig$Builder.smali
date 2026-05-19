.class public final Lcom/oplus/log/core/LoganConfig$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/core/LoganConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public mCachePath:Ljava/lang/String;

.field public mDay:J

.field public mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

.field public mEncryptIv16:[B

.field public mEncryptKey16:[B

.field public mFileNamePrefix:Ljava/lang/String;

.field public mMaxFile:J

.field public mMinSDCard:J

.field public mPath:Ljava/lang/String;

.field public maxQueue:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x800000

    iput-wide v0, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mMaxFile:J

    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mDay:J

    const-wide/32 v0, 0x3200000

    iput-wide v0, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mMinSDCard:J

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mFileNamePrefix:Ljava/lang/String;

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/oplus/log/core/LoganConfig$Builder;->maxQueue:J

    return-void
.end method


# virtual methods
.method public build()Lcom/oplus/log/core/LoganConfig;
    .registers 4

    new-instance v0, Lcom/oplus/log/core/LoganConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/log/core/LoganConfig;-><init>(Lcom/oplus/log/core/LoganConfig$1;)V

    iget-object v1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mCachePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oplus/log/core/LoganConfig;->access$100(Lcom/oplus/log/core/LoganConfig;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oplus/log/core/LoganConfig;->access$200(Lcom/oplus/log/core/LoganConfig;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mMaxFile:J

    invoke-static {v0, v1, v2}, Lcom/oplus/log/core/LoganConfig;->access$300(Lcom/oplus/log/core/LoganConfig;J)V

    iget-wide v1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mMinSDCard:J

    invoke-static {v0, v1, v2}, Lcom/oplus/log/core/LoganConfig;->access$400(Lcom/oplus/log/core/LoganConfig;J)V

    iget-wide v1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mDay:J

    invoke-static {v0, v1, v2}, Lcom/oplus/log/core/LoganConfig;->access$500(Lcom/oplus/log/core/LoganConfig;J)V

    iget-object v1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mEncryptKey16:[B

    invoke-static {v0, v1}, Lcom/oplus/log/core/LoganConfig;->access$600(Lcom/oplus/log/core/LoganConfig;[B)V

    iget-object v1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mEncryptIv16:[B

    invoke-static {v0, v1}, Lcom/oplus/log/core/LoganConfig;->access$700(Lcom/oplus/log/core/LoganConfig;[B)V

    iget-object v1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mFileNamePrefix:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oplus/log/core/LoganConfig;->access$800(Lcom/oplus/log/core/LoganConfig;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    invoke-virtual {v0, v1}, Lcom/oplus/log/core/LoganConfig;->setDynConfigManager(Lcom/oplus/log/config/DynConfigManager;)V

    iget-wide v1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->maxQueue:J

    invoke-static {v0, v1, v2}, Lcom/oplus/log/core/LoganConfig;->access$900(Lcom/oplus/log/core/LoganConfig;J)V

    return-object v0
.end method

.method public setCachePath(Ljava/lang/String;)Lcom/oplus/log/core/LoganConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mCachePath:Ljava/lang/String;

    return-object p0
.end method

.method public setDay(J)Lcom/oplus/log/core/LoganConfig$Builder;
    .registers 5

    const-wide/32 v0, 0x5265c00

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mDay:J

    return-object p0
.end method

.method public setDynConfigManager(Lcom/oplus/log/config/DynConfigManager;)Lcom/oplus/log/core/LoganConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    return-object p0
.end method

.method public setEncryptIV16([B)Lcom/oplus/log/core/LoganConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mEncryptIv16:[B

    return-object p0
.end method

.method public setEncryptKey16([B)Lcom/oplus/log/core/LoganConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mEncryptKey16:[B

    return-object p0
.end method

.method public setFileNamePrefix(Ljava/lang/String;)Lcom/oplus/log/core/LoganConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mFileNamePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxFile(J)Lcom/oplus/log/core/LoganConfig$Builder;
    .registers 5

    const-wide/32 v0, 0x100000

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mMaxFile:J

    return-object p0
.end method

.method public setMaxQueue(J)Lcom/oplus/log/core/LoganConfig$Builder;
    .registers 3

    iput-wide p1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->maxQueue:J

    return-object p0
.end method

.method public setMinSDCard(J)Lcom/oplus/log/core/LoganConfig$Builder;
    .registers 3

    iput-wide p1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mMinSDCard:J

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/oplus/log/core/LoganConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/LoganConfig$Builder;->mPath:Ljava/lang/String;

    return-object p0
.end method
