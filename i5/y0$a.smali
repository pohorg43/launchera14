.class public final Li5/y0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li5/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li5/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Li5/y0$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Li5/y0$a;

    invoke-direct {v0}, Li5/y0$a;-><init>()V

    sput-object v0, Li5/y0$a;->a:Li5/y0$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ly6/j1;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/j1;",
            "Ljava/util/Collection<",
            "+",
            "Ly6/l0;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ly6/j1;",
            "+",
            "Ljava/lang/Iterable<",
            "+",
            "Ly6/l0;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ly6/l0;",
            "Lh4/z;",
            ">;)",
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    const-string p0, "currentTypeConstructor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "superTypes"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "neighbors"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "reportLoop"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method
