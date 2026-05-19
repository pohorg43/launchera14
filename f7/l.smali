.class public final Lf7/l;
.super Lf7/c;
.source ""


# static fields
.field public static final a:Lf7/l;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lf7/l;

    invoke-direct {v0}, Lf7/l;-><init>()V

    sput-object v0, Lf7/l;->a:Lf7/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf7/c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public d(ILjava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/lang/Void;

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1

    new-instance p0, Lf7/l$a;

    invoke-direct {p0}, Lf7/l$a;-><init>()V

    return-object p0
.end method
