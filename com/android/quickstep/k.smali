.class public final synthetic Lcom/android/quickstep/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/k;->a:Lcom/android/quickstep/AbsSwipeUpHandler;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;F)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/k;->a:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->N(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/graphics/RectF;F)V

    return-void
.end method
