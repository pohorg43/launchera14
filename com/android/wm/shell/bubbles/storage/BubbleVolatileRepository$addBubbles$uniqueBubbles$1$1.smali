.class final Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$addBubbles$uniqueBubbles$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->addBubbles(ILjava/util/List;)V
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
.field public final synthetic $b:Lcom/android/wm/shell/bubbles/storage/BubbleEntity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/storage/BubbleEntity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$addBubbles$uniqueBubbles$1$1;->$b:Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/wm/shell/bubbles/storage/BubbleEntity;)Ljava/lang/Boolean;
    .registers 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$addBubbles$uniqueBubbles$1$1;->$b:Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$addBubbles$uniqueBubbles$1$1;->invoke(Lcom/android/wm/shell/bubbles/storage/BubbleEntity;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
