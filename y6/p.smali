.class public final Ly6/p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnnotationsTypeAttribute.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnnotationsTypeAttribute.kt\norg/jetbrains/kotlin/types/AnnotationsTypeAttributeKt\n+ 2 TypeAttributes.kt\norg/jetbrains/kotlin/types/TypeAttributes$Companion\n*L\n1#1,40:1\n42#2:41\n*S KotlinDebug\n*F\n+ 1 AnnotationsTypeAttribute.kt\norg/jetbrains/kotlin/types/AnnotationsTypeAttributeKt\n*L\n37#1:41\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lz4/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lv4/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lz4/n;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Ly6/p;

    const-string v3, "descriptors"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lz4/g;

    move-result-object v2

    const-string v3, "annotationsAttribute"

    const-string v4, "getAnnotationsAttribute(Lorg/jetbrains/kotlin/types/TypeAttributes;)Lorg/jetbrains/kotlin/types/AnnotationsTypeAttribute;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Ly6/p;->a:[Lz4/n;

    sget-object v0, Ly6/g1;->b:Ly6/g1$a;

    const-class v1, Ly6/o;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "kClass"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lf7/q;

    invoke-virtual {v0, v1}, Lf7/v;->b(Lz4/d;)I

    move-result v0

    invoke-direct {v2, v1, v0}, Lf7/q;-><init>(Lz4/d;I)V

    const-string v0, "null cannot be cast to non-null type kotlin.properties.ReadOnlyProperty<org.jetbrains.kotlin.types.TypeAttributes, T of org.jetbrains.kotlin.types.TypeAttributes.Companion.attributeAccessor?>"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Ly6/p;->b:Lv4/b;

    return-void
.end method

.method public static final a(Ly6/g1;)Lj5/h;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ly6/p;->b(Ly6/g1;)Ly6/o;

    move-result-object p0

    if-eqz p0, :cond_f

    iget-object p0, p0, Ly6/o;->a:Lj5/h;

    if-nez p0, :cond_13

    :cond_f
    sget p0, Lj5/h;->I:I

    sget-object p0, Lj5/h$a;->b:Lj5/h;

    :cond_13
    return-object p0
.end method

.method public static final b(Ly6/g1;)Ly6/o;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly6/p;->b:Lv4/b;

    sget-object v1, Ly6/p;->a:[Lz4/n;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v0, Lf7/q;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "thisRef"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "property"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lf7/a;->a()Lf7/c;

    move-result-object p0

    iget v0, v0, Lf7/a$a;->b:I

    invoke-virtual {p0, v0}, Lf7/c;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/o;

    return-object p0
.end method
