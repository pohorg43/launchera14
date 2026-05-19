.class public final Ly6/d1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ly6/d1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly6/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ly6/d1$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly6/d1$a;

    invoke-direct {v0}, Ly6/d1$a;-><init>()V

    sput-object v0, Ly6/d1$a;->a:Ly6/d1$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ly6/x1;Ly6/l0;Ly6/l0;Li5/a1;)V
    .registers 5

    const-string p0, "substitutor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "unsubstitutedArgument"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "argument"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "typeParameter"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Li5/z0;)V
    .registers 2

    const-string p0, "typeAlias"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c(Li5/z0;Li5/a1;Ly6/l0;)V
    .registers 4

    const-string p0, "typeAlias"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "substitutedArgument"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lj5/c;)V
    .registers 2

    const-string p0, "annotation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
