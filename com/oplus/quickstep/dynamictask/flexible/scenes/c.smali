.class public final synthetic Lcom/oplus/quickstep/dynamictask/flexible/scenes/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/c;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/c;->a:Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Boolean;)V

    return-void
.end method
