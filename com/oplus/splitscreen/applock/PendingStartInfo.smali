.class public Lcom/oplus/splitscreen/applock/PendingStartInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public enterSplitType:I

.field public mainIntent:Landroid/content/Intent;

.field public mainTaskId:I

.field public mainUser:I

.field public sideIntent:Landroid/content/Intent;

.field public sidePosition:I

.field public sideTaskId:I

.field public sideUser:I

.field public splitRatio:F

.field public toType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->enterSplitType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->toType:I

    iput v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sidePosition:I

    iput v0, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainTaskId:I

    iput v0, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideTaskId:I

    iput v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainUser:I

    iput v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideUser:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->splitRatio:F

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/oplus/splitscreen/applock/PendingStartInfo;
    .registers 4

    new-instance v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;

    invoke-direct {v0}, Lcom/oplus/splitscreen/applock/PendingStartInfo;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    sget-object v1, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_FROM_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->enterSplitType:I

    sget-object v1, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_TO_TYPE:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->toType:I

    sget-object v1, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_MAININTENT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainIntent:Landroid/content/Intent;

    sget-object v1, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_SIDEINTENT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideIntent:Landroid/content/Intent;

    sget-object v1, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_SIDEPOSITION:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sidePosition:I

    sget-object v1, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_MAINUSER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainUser:I

    sget-object v1, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_SIDEUSER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideUser:I

    sget-object v1, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_MAINTASKID:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainTaskId:I

    sget-object v1, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_SIDETASKID:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideTaskId:I

    sget-object v1, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_SPLITTATIO:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    iput p0, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->splitRatio:F

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "(PendingStartInfo "

    const-string v1, ",enterSplitType="

    invoke-static {v0, v1}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->enterSplitType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",toType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->toType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2b

    const-string v1, ",mainIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    const-string v1, ",mainTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mainUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideIntent:Landroid/content/Intent;

    if-eqz v1, :cond_51

    const-string v1, ",sideIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    const-string v1, ",sideTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",sideUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",sidePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sidePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",splitRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->splitRatio:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
