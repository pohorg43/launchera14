.class public final Lc5/r0$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/r0;->c(Li5/x;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Li5/e1;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc5/r0$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc5/r0$a;

    invoke-direct {v0}, Lc5/r0$a;-><init>()V

    sput-object v0, Lc5/r0$a;->a:Lc5/r0$a;

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
    .registers 2

    check-cast p1, Li5/e1;

    sget-object p0, Lc5/r0;->a:Lc5/r0;

    invoke-interface {p1}, Li5/d1;->getType()Ly6/l0;

    move-result-object p0

    const-string p1, "it.type"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lc5/r0;->e(Ly6/l0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
