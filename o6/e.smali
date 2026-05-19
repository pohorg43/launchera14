.class public final Lo6/e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Li5/l;",
        "Li5/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo6/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lo6/e;

    invoke-direct {v0}, Lo6/e;-><init>()V

    sput-object v0, Lo6/e;->a:Lo6/e;

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

    check-cast p1, Li5/l;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/l;->b()Li5/l;

    move-result-object p0

    return-object p0
.end method
