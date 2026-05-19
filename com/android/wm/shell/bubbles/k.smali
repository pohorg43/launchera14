.class public final synthetic Lcom/android/wm/shell/bubbles/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/k;->a:Lcom/android/wm/shell/bubbles/BubbleController;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/k;->a:Lcom/android/wm/shell/bubbles/BubbleController;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->r(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/util/List;)Lh4/z;

    move-result-object p0

    return-object p0
.end method
