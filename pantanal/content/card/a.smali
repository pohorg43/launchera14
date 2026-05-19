.class public final synthetic Lpantanal/content/card/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/foundation/userunlock/UserUnlockManager$a;


# instance fields
.field public final synthetic a:Lpantanal/content/card/CardConfigProxy;


# direct methods
.method public synthetic constructor <init>(Lpantanal/content/card/CardConfigProxy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/content/card/a;->a:Lpantanal/content/card/CardConfigProxy;

    return-void
.end method


# virtual methods
.method public final onUserUnlock()V
    .registers 1

    iget-object p0, p0, Lpantanal/content/card/a;->a:Lpantanal/content/card/CardConfigProxy;

    invoke-static {p0}, Lpantanal/content/card/CardConfigProxy;->a(Lpantanal/content/card/CardConfigProxy;)V

    return-void
.end method
