.class public final Lr5/l0$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr5/l0;->b(Li5/b;)Li5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Li5/b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lr5/l0$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lr5/l0$b;

    invoke-direct {v0}, Lr5/l0$b;-><init>()V

    sput-object v0, Lr5/l0$b;->a:Lr5/l0$b;

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
    .registers 4

    check-cast p1, Li5/b;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr5/g;->m:Lr5/g;

    check-cast p1, Li5/u0;

    const-string p0, "functionDescriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lf5/g;->B(Li5/l;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_24

    new-instance p0, Lr5/f;

    invoke-direct {p0, p1}, Lr5/f;-><init>(Li5/u0;)V

    invoke-static {p1, v1, p0, v0}, Lo6/c;->b(Li5/b;ZLkotlin/jvm/functions/Function1;I)Li5/b;

    move-result-object p0

    if-eqz p0, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
