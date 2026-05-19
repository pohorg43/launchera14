.class public final synthetic Lcom/android/wm/shell/back/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/back/BackAnimationController$4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController$4;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/c;->a:Lcom/android/wm/shell/back/BackAnimationController$4;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/c;->a:Lcom/android/wm/shell/back/BackAnimationController$4;

    invoke-static {p0}, Lcom/android/wm/shell/back/BackAnimationController$4;->c(Lcom/android/wm/shell/back/BackAnimationController$4;)V

    return-void
.end method
