.class public final synthetic Landroidx/lifecycle/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lo7/f;


# direct methods
.method public synthetic constructor <init>(Lo7/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/b;->a:Lo7/f;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Landroidx/lifecycle/b;->a:Lo7/f;

    invoke-static {p0, p1}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->a(Lo7/f;Ljava/lang/Object;)V

    return-void
.end method
