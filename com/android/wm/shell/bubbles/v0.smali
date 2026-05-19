.class public final synthetic Lcom/android/wm/shell/bubbles/v0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/bubbles/BubbleStackView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/v0;->a:Lcom/android/wm/shell/bubbles/BubbleStackView;

    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/v0;->a:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result p0

    return p0
.end method
