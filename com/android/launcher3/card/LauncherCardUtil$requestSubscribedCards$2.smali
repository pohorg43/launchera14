.class final Lcom/android/launcher3/card/LauncherCardUtil$requestSubscribedCards$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/LauncherCardUtil;->requestSubscribedCards(Landroid/os/Bundle;)Landroid/os/Bundle;
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
.field public final synthetic $cardType:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/card/LauncherCardUtil$requestSubscribedCards$2;->$cardType:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/Boolean;
    .registers 3

    const-string v0, "launcherCardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardUtil$requestSubscribedCards$2;->$cardType:I

    if-ne p1, p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/LauncherCardUtil$requestSubscribedCards$2;->invoke(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
