.class public final Lh5/h;
.super Lf5/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh5/h$a;,
        Lh5/h$b;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJvmBuiltIns.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmBuiltIns.kt\norg/jetbrains/kotlin/builtins/jvm/JvmBuiltIns\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1#2:104\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic h:[Lz4/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public f:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lh5/h$b;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lx6/i;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lz4/n;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lh5/h;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const-string v3, "customizer"

    const-string v4, "getCustomizer()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsCustomizer;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lh5/h;->h:[Lz4/n;

    return-void
.end method

.method public constructor <init>(Lx6/m;Lh5/h$a;)V
    .registers 4

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lf5/g;-><init>(Lx6/m;)V

    new-instance v0, Lh5/h$c;

    invoke-direct {v0, p0, p1}, Lh5/h$c;-><init>(Lh5/h;Lx6/m;)V

    check-cast p1, Lx6/e;

    invoke-virtual {p1, v0}, Lx6/e;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Lh5/h;->g:Lx6/i;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_29

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    goto :goto_2d

    :cond_25
    invoke-virtual {p0, p2}, Lf5/g;->d(Z)V

    goto :goto_2d

    :cond_29
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lf5/g;->d(Z)V

    :goto_2d
    return-void
.end method


# virtual methods
.method public final R()Lh5/l;
    .registers 3

    iget-object p0, p0, Lh5/h;->g:Lx6/i;

    sget-object v0, Lh5/h;->h:[Lz4/n;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh5/l;

    return-object p0
.end method

.method public e()Lk5/a;
    .registers 1

    invoke-virtual {p0}, Lh5/h;->R()Lh5/l;

    move-result-object p0

    return-object p0
.end method

.method public m()Ljava/lang/Iterable;
    .registers 6

    invoke-super {p0}, Lf5/g;->m()Ljava/lang/Iterable;

    move-result-object v0

    const-string v1, "super.getClassDescriptorFactories()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lh5/f;

    iget-object v2, p0, Lf5/g;->d:Lx6/m;

    const/4 v3, 0x0

    if-eqz v2, :cond_27

    const-string v4, "storageManager"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lf5/g;->l()Ll5/a0;

    move-result-object p0

    const-string v4, "builtInsModule"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-direct {v1, v2, p0, v3, v4}, Lh5/f;-><init>(Lx6/m;Li5/e0;Lkotlin/jvm/functions/Function1;I)V

    invoke-static {v0, v1}, Li4/v;->T(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_27
    const/4 p0, 0x6

    invoke-static {p0}, Lf5/g;->a(I)V

    throw v3
.end method

.method public r()Lk5/c;
    .registers 1

    invoke-virtual {p0}, Lh5/h;->R()Lh5/l;

    move-result-object p0

    return-object p0
.end method
