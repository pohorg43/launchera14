.class public final synthetic Lcom/android/wm/shell/bubbles/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

.field public final synthetic b:Lcom/android/wm/shell/bubbles/BubbleEntry;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/x;->a:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/x;->b:Lcom/android/wm/shell/bubbles/BubbleEntry;

    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/x;->c:Z

    iput-boolean p4, p0, Lcom/android/wm/shell/bubbles/x;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/x;->a:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/x;->b:Lcom/android/wm/shell/bubbles/BubbleEntry;

    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/x;->c:Z

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/x;->d:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->e(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V

    return-void
.end method
