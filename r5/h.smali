.class public final Lr5/h;
.super Lr5/m0;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nspecialBuiltinMembers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 specialBuiltinMembers.kt\norg/jetbrains/kotlin/load/java/BuiltinMethodsWithSpecialGenericSignature\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,182:1\n1#2:183\n*E\n"
    }
.end annotation


# static fields
.field public static final m:Lr5/h;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lr5/h;

    invoke-direct {v0}, Lr5/h;-><init>()V

    sput-object v0, Lr5/h;->m:Lr5/h;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lr5/m0;-><init>()V

    return-void
.end method

.method public static final a(Li5/x;)Li5/x;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "functionDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lr5/h;->m:Lr5/h;

    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object v1

    const-string v2, "functionDescriptor.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lr5/h;->b(Lh6/f;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 p0, 0x0

    return-object p0

    :cond_18
    const/4 v0, 0x0

    sget-object v1, Lr5/h$a;->a:Lr5/h$a;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lo6/c;->b(Li5/b;ZLkotlin/jvm/functions/Function1;I)Li5/b;

    move-result-object p0

    check-cast p0, Li5/x;

    return-object p0
.end method


# virtual methods
.method public final b(Lh6/f;)Z
    .registers 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr5/m0;->f:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
