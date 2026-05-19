.class final Lcom/android/launcher/layout/AutoFillHelper$rearrangeMovableItems$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/layout/AutoFillHelper;->rearrangeMovableItems(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/launcher/layout/Item;",
        "Ljava/lang/Comparable<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $isOriginalSorting:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/layout/AutoFillHelper$rearrangeMovableItems$1;->$isOriginalSorting:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/launcher/layout/Item;)Ljava/lang/Comparable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/layout/Item;",
            ")",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/launcher/layout/AutoFillHelper$rearrangeMovableItems$1;->$isOriginalSorting:Z

    if-eqz p0, :cond_e

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object p0

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getVerifiedPosition()Landroid/graphics/Point;

    move-result-object p0

    :goto_12
    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher/layout/Item;

    invoke-virtual {p0, p1}, Lcom/android/launcher/layout/AutoFillHelper$rearrangeMovableItems$1;->invoke(Lcom/android/launcher/layout/Item;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method
