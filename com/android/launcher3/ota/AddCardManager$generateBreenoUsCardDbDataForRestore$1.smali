.class final Lcom/android/launcher3/ota/AddCardManager$generateBreenoUsCardDbDataForRestore$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/ota/AddCardManager;->generateBreenoUsCardDbDataForRestore(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $targetMode:Lcom/android/launcher/mode/LauncherMode;


# direct methods
.method public constructor <init>(Lcom/android/launcher/mode/LauncherMode;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/ota/AddCardManager$generateBreenoUsCardDbDataForRestore$1;->$targetMode:Lcom/android/launcher/mode/LauncherMode;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;)Ljava/lang/Boolean;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCardType()I

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/ota/AddCardManager$generateBreenoUsCardDbDataForRestore$1;->$targetMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-static {p1, p0}, Lcom/android/launcher3/ota/AddCardManager;->access$isUnavailableButHavePermissionCrad(ILcom/android/launcher/mode/LauncherMode;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ota/AddCardManager$generateBreenoUsCardDbDataForRestore$1;->invoke(Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
