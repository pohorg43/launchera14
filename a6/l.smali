.class public final La6/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu6/r;


# static fields
.field public static final a:La6/l;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, La6/l;

    invoke-direct {v0}, La6/l;-><init>()V

    sput-object v0, La6/l;->a:La6/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc6/q;Ljava/lang/String;Ly6/s0;Ly6/s0;)Ly6/l0;
    .registers 6

    const-string p0, "proto"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "flexibleId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "lowerBound"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "upperBound"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "kotlin.jvm.PlatformType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    sget-object p0, La7/i;->O:La7/i;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    invoke-virtual {p3}, Ly6/s0;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x2

    invoke-virtual {p4}, Ly6/s0;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-static {p0, p1}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object p0

    return-object p0

    :cond_37
    sget-object p0, Lf6/a;->g:Li6/h$f;

    invoke-virtual {p1, p0}, Li6/h$d;->h(Li6/h$f;)Z

    move-result p0

    if-eqz p0, :cond_45

    new-instance p0, Lw5/i;

    invoke-direct {p0, p3, p4}, Lw5/i;-><init>(Ly6/s0;Ly6/s0;)V

    return-object p0

    :cond_45
    invoke-static {p3, p4}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object p0

    return-object p0
.end method
