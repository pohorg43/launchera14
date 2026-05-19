.class public final synthetic Lcom/android/quickstep/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/AbsSwipeUpHandler;

.field public final synthetic b:Ljava/util/function/Consumer;

.field public final synthetic c:Z

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/util/function/Consumer;ZI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/g;->a:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput-object p2, p0, Lcom/android/quickstep/g;->b:Ljava/util/function/Consumer;

    iput-boolean p3, p0, Lcom/android/quickstep/g;->c:Z

    iput p4, p0, Lcom/android/quickstep/g;->d:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/g;->a:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v1, p0, Lcom/android/quickstep/g;->b:Ljava/util/function/Consumer;

    iget-boolean v2, p0, Lcom/android/quickstep/g;->c:Z

    iget p0, p0, Lcom/android/quickstep/g;->d:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->H(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/util/function/Consumer;ZILjava/lang/Boolean;)V

    return-void
.end method
