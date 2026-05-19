.class final Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$sanitizeBubbles$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->sanitizeBubbles(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/wm/shell/bubbles/storage/BubbleEntity;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $activeUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$sanitizeBubbles$1;->$activeUsers:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/wm/shell/bubbles/storage/BubbleEntity;)Ljava/lang/Boolean;
    .registers 3

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$sanitizeBubbles$1;->$activeUsers:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$sanitizeBubbles$1;->invoke(Lcom/android/wm/shell/bubbles/storage/BubbleEntity;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
