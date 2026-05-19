.class public final Lj5/k$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/k;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lj5/h;",
        "Lj7/h<",
        "+",
        "Lj5/c;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lj5/k$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lj5/k$b;

    invoke-direct {v0}, Lj5/k$b;-><init>()V

    sput-object v0, Lj5/k$b;->a:Lj5/k$b;

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

    check-cast p1, Lj5/h;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Li4/v;->x(Ljava/lang/Iterable;)Lj7/h;

    move-result-object p0

    return-object p0
.end method
