.class public Ll5/u$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll5/u;->S()Li5/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ly6/s0;",
        "Ly6/s0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll5/u;


# direct methods
.method public constructor <init>(Ll5/u;)V
    .registers 2

    iput-object p1, p0, Ll5/u$b;->a:Ll5/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ly6/s0;

    iget-object p0, p0, Ll5/u$b;->a:Ll5/u;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1f

    iget-object v0, p0, Ll5/u;->b:Ly6/x1;

    invoke-virtual {v0}, Ly6/x1;->h()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_1f

    :cond_12
    invoke-virtual {p0}, Ll5/u;->z0()Ly6/x1;

    move-result-object p0

    sget-object v0, Ly6/e2;->c:Ly6/e2;

    invoke-virtual {p0, p1, v0}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ly6/s0;

    :cond_1f
    :goto_1f
    return-object p1
.end method
