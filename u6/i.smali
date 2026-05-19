.class public final Lu6/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu6/i$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nClassDeserializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassDeserializer.kt\norg/jetbrains/kotlin/serialization/deserialization/ClassDeserializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,91:1\n1#2:92\n288#3,2:93\n*S KotlinDebug\n*F\n+ 1 ClassDeserializer.kt\norg/jetbrains/kotlin/serialization/deserialization/ClassDeserializer\n*L\n57#1:93,2\n*E\n"
    }
.end annotation


# static fields
.field public static final c:Lu6/i;

.field public static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lh6/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lu6/k;

.field public final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lu6/i$a;",
            "Li5/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lf5/j$a;->d:Lh6/d;

    invoke-virtual {v0}, Lh6/d;->i()Lh6/c;

    move-result-object v0

    invoke-static {v0}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v0

    invoke-static {v0}, Ly0/b;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lu6/i;->d:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lu6/k;)V
    .registers 3

    const-string v0, "components"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu6/i;->a:Lu6/k;

    iget-object p1, p1, Lu6/k;->a:Lx6/m;

    new-instance v0, Lu6/i$b;

    invoke-direct {v0, p0}, Lu6/i$b;-><init>(Lu6/i;)V

    invoke-interface {p1, v0}, Lx6/m;->f(Lkotlin/jvm/functions/Function1;)Lx6/h;

    move-result-object p1

    iput-object p1, p0, Lu6/i;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static a(Lu6/i;Lh6/b;Lu6/g;I)Li5/e;
    .registers 4

    const/4 p2, 0x0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "classId"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lu6/i;->b:Lkotlin/jvm/functions/Function1;

    new-instance p3, Lu6/i$a;

    invoke-direct {p3, p1, p2}, Lu6/i$a;-><init>(Lh6/b;Lu6/g;)V

    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/e;

    return-object p0
.end method
