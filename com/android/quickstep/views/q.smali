.class public final synthetic Lcom/android/quickstep/views/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/q;->a:Lcom/android/quickstep/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/q;->a:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->animateRecentsRotationInPlace(I)V

    return-void
.end method
