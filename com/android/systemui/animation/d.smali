.class public final synthetic Lcom/android/systemui/animation/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/systemui/animation/AnimatedDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/animation/AnimatedDialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/d;->a:Lcom/android/systemui/animation/AnimatedDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/animation/d;->a:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog;->onDialogDismissed()V

    return-void
.end method
