.class public final Ly6/i0;
.super Ly6/t1;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTypeSubstitution.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeSubstitution.kt\norg/jetbrains/kotlin/types/IndexedParametersSubstitution\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,207:1\n37#2,2:208\n*S KotlinDebug\n*F\n+ 1 TypeSubstitution.kt\norg/jetbrains/kotlin/types/IndexedParametersSubstitution\n*L\n127#1:208,2\n*E\n"
    }
.end annotation


# instance fields
.field public final b:[Li5/a1;

.field public final c:[Ly6/q1;

.field public final d:Z


# direct methods
.method public constructor <init>([Li5/a1;[Ly6/q1;Z)V
    .registers 5

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ly6/t1;-><init>()V

    iput-object p1, p0, Ly6/i0;->b:[Li5/a1;

    iput-object p2, p0, Ly6/i0;->c:[Ly6/q1;

    iput-boolean p3, p0, Ly6/i0;->d:Z

    array-length p0, p1

    array-length p0, p2

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 1

    iget-boolean p0, p0, Ly6/i0;->d:Z

    return p0
.end method

.method public e(Ly6/l0;)Ly6/q1;
    .registers 6

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p1

    invoke-interface {p1}, Ly6/j1;->e()Li5/h;

    move-result-object p1

    instance-of v0, p1, Li5/a1;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    check-cast p1, Li5/a1;

    goto :goto_16

    :cond_15
    move-object p1, v1

    :goto_16
    if-nez p1, :cond_19

    return-object v1

    :cond_19
    invoke-interface {p1}, Li5/a1;->getIndex()I

    move-result v0

    iget-object v2, p0, Ly6/i0;->b:[Li5/a1;

    array-length v3, v2

    if-ge v0, v3, :cond_37

    aget-object v2, v2, v0

    invoke-interface {v2}, Li5/a1;->h()Ly6/j1;

    move-result-object v2

    invoke-interface {p1}, Li5/a1;->h()Ly6/j1;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    iget-object p0, p0, Ly6/i0;->c:[Ly6/q1;

    aget-object p0, p0, v0

    return-object p0

    :cond_37
    return-object v1
.end method

.method public f()Z
    .registers 1

    iget-object p0, p0, Ly6/i0;->c:[Ly6/q1;

    array-length p0, p0

    if-nez p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method
