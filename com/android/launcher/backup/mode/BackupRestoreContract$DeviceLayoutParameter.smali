.class public Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;
.super Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/backup/mode/BackupRestoreContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceLayoutParameter"
.end annotation


# instance fields
.field public final mCurrentMode:Lcom/android/launcher/mode/LauncherMode;

.field public final mIsCompact:Z


# direct methods
.method public constructor <init>(IIZLcom/android/launcher/mode/LauncherMode;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;-><init>(II)V

    iput-boolean p3, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;->mIsCompact:Z

    iput-object p4, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;->mCurrentMode:Lcom/android/launcher/mode/LauncherMode;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsCompact "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;->mIsCompact:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;->mCurrentMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
