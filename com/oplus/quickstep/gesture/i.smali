.class public final synthetic Lcom/oplus/quickstep/gesture/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/i;->a:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/i;->a:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->j0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z

    move-result p0

    return p0
.end method
