.class public Lcom/android/common/debug/FileLogHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/debug/FileLogHelper$FileLogInfo;,
        Lcom/android/common/debug/FileLogHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/common/debug/FileLogHelper$Companion;

.field public static final LOG_DIR_BR:Ljava/lang/String; = "BackupRestore"

.field public static final LOG_DIR_LOADER:Ljava/lang/String; = "Loader"

.field public static final LOG_DIR_OTA:Ljava/lang/String; = "OTA"

.field public static final TYPE_BR:I = 0x1

.field public static final TYPE_LOADER:I = 0x3

.field public static final TYPE_OTA:I = 0x2


# instance fields
.field private final mFileLogInfo:Lcom/android/common/debug/FileLogHelper$FileLogInfo;

.field private mIsValid:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/debug/FileLogHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/debug/FileLogHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/debug/FileLogHelper;->Companion:Lcom/android/common/debug/FileLogHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/common/debug/FileLogHelper$FileLogInfo;)V
    .registers 3

    const-string v0, "mFileLogInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/debug/FileLogHelper;->mFileLogInfo:Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    return-void
.end method


# virtual methods
.method public final getFileDirName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/common/debug/FileLogHelper;->mFileLogInfo:Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    invoke-virtual {p0}, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->getFileDir()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFileLogInfo()Lcom/android/common/debug/FileLogHelper$FileLogInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/common/debug/FileLogHelper;->mFileLogInfo:Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    return-object p0
.end method

.method public final getType()I
    .registers 1

    iget-object p0, p0, Lcom/android/common/debug/FileLogHelper;->mFileLogInfo:Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    invoke-virtual {p0}, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->getType()I

    move-result p0

    return p0
.end method

.method public final isBRFileLog()Z
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->getPersistentLog()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    const/4 v2, 0x2

    const-string v3, "BackupRestore"

    invoke-static {p0, v3, v1, v2}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p0

    if-ne p0, v0, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    return v0
.end method

.method public final isOTAFileLog()Z
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->getPersistentLog()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    const/4 v2, 0x2

    const-string v3, "OTA"

    invoke-static {p0, v3, v1, v2}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p0

    if-ne p0, v0, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    return v0
.end method

.method public final isValid()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/common/debug/FileLogHelper;->mIsValid:Z

    return p0
.end method

.method public final setValid(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/common/debug/FileLogHelper;->mIsValid:Z

    return-void
.end method

.method public final startPersistentLog(J)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/common/debug/FileLogHelper;->setValid(Z)V

    sget-object v0, Lcom/android/common/debug/FileLogManager;->INSTANCE:Lcom/android/common/debug/FileLogManager;

    invoke-virtual {v0, p0}, Lcom/android/common/debug/FileLogManager;->startPersistentLog(Lcom/android/common/debug/FileLogHelper;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/common/debug/FileLogHelper;->stopPersistentLog(J)V

    return-void
.end method

.method public final stopPersistentLog(J)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/common/debug/FileLogHelper;->isValid()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/common/debug/FileLogManager;->INSTANCE:Lcom/android/common/debug/FileLogManager;

    invoke-virtual {p0}, Lcom/android/common/debug/FileLogHelper;->getType()I

    move-result p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/common/debug/FileLogManager;->stopPersistentLog(IJ)V

    :cond_f
    return-void
.end method
