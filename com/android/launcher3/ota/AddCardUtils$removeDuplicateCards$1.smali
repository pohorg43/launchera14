.class final Lcom/android/launcher3/ota/AddCardUtils$removeDuplicateCards$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/ota/AddCardUtils;->removeDuplicateCards(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/launcher3/card/LauncherCardInfo;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $itemForDb:Lcom/android/launcher3/card/LauncherCardInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/ota/AddCardUtils$removeDuplicateCards$1;->$itemForDb:Lcom/android/launcher3/card/LauncherCardInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/Boolean;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/ota/AddCardUtils$removeDuplicateCards$1;->$itemForDb:Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/ota/AddCardUtils;->access$isRemoveDuplicateCards(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/LauncherCardInfo;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ota/AddCardUtils$removeDuplicateCards$1;->invoke(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
