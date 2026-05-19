.class public final Lz5/t;
.super Lz5/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz5/a<",
        "Lj5/c;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nsignatureEnhancement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 signatureEnhancement.kt\norg/jetbrains/kotlin/load/java/typeEnhancement/SignatureParts\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,282:1\n1#2:283\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lj5/a;

.field public final b:Z

.field public final c:Lu5/g;

.field public final d:Lr5/c;

.field public final e:Z


# direct methods
.method public constructor <init>(Lj5/a;ZLu5/g;Lr5/c;Z)V
    .registers 7

    const-string v0, "containerContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerApplicabilityType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lz5/a;-><init>()V

    iput-object p1, p0, Lz5/t;->a:Lj5/a;

    iput-boolean p2, p0, Lz5/t;->b:Z

    iput-object p3, p0, Lz5/t;->c:Lu5/g;

    iput-object p4, p0, Lz5/t;->d:Lr5/c;

    iput-boolean p5, p0, Lz5/t;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Lj5/a;ZLu5/g;Lr5/c;ZI)V
    .registers 13

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_5

    const/4 p5, 0x0

    :cond_5
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lz5/t;-><init>(Lj5/a;ZLu5/g;Lr5/c;Z)V

    return-void
.end method


# virtual methods
.method public b()Lr5/b;
    .registers 1

    iget-object p0, p0, Lz5/t;->c:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->q:Lr5/e;

    return-object p0
.end method

.method public d(Lc7/i;)Lc7/i;
    .registers 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ly6/l0;

    invoke-static {p1}, Ly6/c2;->b(Ly6/l0;)Ly6/l0;

    move-result-object p0

    return-object p0
.end method

.method public g(Lc7/i;)Lh6/d;
    .registers 3

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ly6/l0;

    sget-object p0, Ly6/a2;->a:Ly6/s0;

    const/4 p0, 0x0

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p1

    invoke-interface {p1}, Ly6/j1;->e()Li5/h;

    move-result-object p1

    instance-of v0, p1, Li5/e;

    if-eqz v0, :cond_1b

    check-cast p1, Li5/e;

    goto :goto_1c

    :cond_1b
    move-object p1, p0

    :goto_1c
    if-eqz p1, :cond_22

    invoke-static {p1}, Lk6/i;->g(Li5/l;)Lh6/d;

    move-result-object p0

    :cond_22
    return-object p0

    :cond_23
    const/16 p1, 0x1e

    invoke-static {p1}, Ly6/a2;->a(I)V

    throw p0
.end method
