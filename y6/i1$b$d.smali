.class public final Ly6/i1$b$d;
.super Ly6/i1$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly6/i1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAbstractTypeChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractTypeChecker.kt\norg/jetbrains/kotlin/types/TypeCheckerState$SupertypesPolicy$UpperIfFlexible\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,835:1\n1#2:836\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Ly6/i1$b$d;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly6/i1$b$d;

    invoke-direct {v0}, Ly6/i1$b$d;-><init>()V

    sput-object v0, Ly6/i1$b$d;->a:Ly6/i1$b$d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ly6/i1$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public a(Ly6/i1;Lc7/i;)Lc7/k;
    .registers 3

    const-string p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Ly6/i1;->d:Lc7/p;

    invoke-interface {p0, p2}, Lc7/p;->o(Lc7/i;)Lc7/k;

    move-result-object p0

    return-object p0
.end method
