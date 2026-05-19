.class public Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/backup/mode/BackupRestoreContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawerModeSetting"
.end annotation


# instance fields
.field public final mAddAppToWorkSpace:Z

.field public final mAppGlobalSearch:Z

.field public final mShowIndicateApp:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mShowIndicateApp:Z

    iput-boolean p2, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mAddAppToWorkSpace:Z

    iput-boolean p3, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mAppGlobalSearch:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "[showIndicateApp "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mShowIndicateApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", addAppToWorkSpace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mAddAppToWorkSpace:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", appGlobalSearch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mAppGlobalSearch:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
