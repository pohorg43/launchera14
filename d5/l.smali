.class public final Ld5/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld5/f;


# static fields
.field public static final a:Ld5/l;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ld5/l;

    invoke-direct {v0}, Ld5/l;-><init>()V

    sput-object v0, Ld5/l;->a:Ld5/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public bridge synthetic b()Ljava/lang/reflect/Member;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const-string p0, "args"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "call/callBy are not supported for this declaration."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getReturnType()Ljava/lang/reflect/Type;
    .registers 2

    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v0, "TYPE"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
