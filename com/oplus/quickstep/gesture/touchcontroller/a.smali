.class public final synthetic Lcom/oplus/quickstep/gesture/touchcontroller/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/a;->a:Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/a;->a:Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->d(Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;Ljava/lang/Boolean;)Lh4/z;

    move-result-object p0

    return-object p0
.end method
