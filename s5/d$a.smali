.class public final Ls5/d$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls5/d;->a(Ljava/util/List;)Lm6/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Li5/e0;",
        "Ly6/l0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ls5/d$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ls5/d$a;

    invoke-direct {v0}, Ls5/d$a;-><init>()V

    sput-object v0, Ls5/d$a;->a:Ls5/d$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Li5/e0;

    const-string p0, "module"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ls5/c;->a:Ls5/c;

    sget-object p0, Ls5/c;->c:Lh6/f;

    invoke-interface {p1}, Li5/e0;->k()Lf5/g;

    move-result-object p1

    sget-object v0, Lf5/j$a;->u:Lh6/c;

    invoke-virtual {p1, v0}, Lf5/g;->j(Lh6/c;)Li5/e;

    move-result-object p1

    invoke-static {p0, p1}, Ls5/a;->b(Lh6/f;Li5/e;)Li5/e1;

    move-result-object p0

    if-eqz p0, :cond_20

    invoke-interface {p0}, Li5/d1;->getType()Ly6/l0;

    move-result-object p0

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    if-nez p0, :cond_2c

    sget-object p0, La7/i;->I0:La7/i;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-static {p0, p1}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object p0

    :cond_2c
    return-object p0
.end method
