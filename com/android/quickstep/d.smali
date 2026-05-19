.class public final synthetic Lcom/android/quickstep/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/d;->a:Lcom/android/quickstep/AbsSwipeUpHandler;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/d;->a:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isCanceled()Z

    move-result p0

    return p0
.end method
