.class public final Lf7/u$a$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf7/u$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lf5/g;",
        "Ly6/l0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lf7/u$a$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lf7/u$a$a;

    invoke-direct {v0}, Lf7/u$a$a;-><init>()V

    sput-object v0, Lf7/u$a$a;->a:Lf7/u$a$a;

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

    check-cast p1, Lf5/g;

    const-string p0, "$this$null"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lf5/h;->f:Lf5/h;

    invoke-virtual {p1, p0}, Lf5/g;->u(Lf5/h;)Ly6/s0;

    move-result-object p0

    if-eqz p0, :cond_18

    const-string p1, "booleanType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_18
    const/16 p0, 0x3f

    invoke-static {p0}, Lf5/g;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
