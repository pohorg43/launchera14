.class public final Lv6/a;
.super Lt6/a;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBuiltInSerializerProtocol.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuiltInSerializerProtocol.kt\norg/jetbrains/kotlin/serialization/deserialization/builtins/BuiltInSerializerProtocol\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,45:1\n1#2:46\n*E\n"
    }
.end annotation


# static fields
.field public static final q:Lv6/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lv6/a;

    invoke-direct {v0}, Lv6/a;-><init>()V

    sput-object v0, Lv6/a;->q:Lv6/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 19

    new-instance v1, Li6/f;

    invoke-direct {v1}, Li6/f;-><init>()V

    invoke-static {v1}, Ld6/b;->a(Li6/f;)V

    const-string v0, "newInstance().apply(Buil…f::registerAllExtensions)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld6/b;->a:Li6/h$f;

    move-object v2, v0

    const-string v3, "packageFqName"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld6/b;->c:Li6/h$f;

    move-object v3, v0

    const-string v4, "constructorAnnotation"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld6/b;->b:Li6/h$f;

    move-object v4, v0

    const-string v5, "classAnnotation"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld6/b;->d:Li6/h$f;

    move-object v5, v0

    const-string v6, "functionAnnotation"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    sget-object v0, Ld6/b;->e:Li6/h$f;

    move-object v7, v0

    const-string v8, "propertyAnnotation"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld6/b;->f:Li6/h$f;

    move-object v8, v0

    const-string v9, "propertyGetterAnnotation"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld6/b;->g:Li6/h$f;

    move-object v9, v0

    const-string v10, "propertySetterAnnotation"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v0, Ld6/b;->i:Li6/h$f;

    move-object v13, v0

    const-string v14, "enumEntryAnnotation"

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld6/b;->h:Li6/h$f;

    move-object v14, v0

    const-string v15, "compileTimeValue"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld6/b;->j:Li6/h$f;

    move-object v15, v0

    const-string v6, "parameterAnnotation"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld6/b;->k:Li6/h$f;

    move-object/from16 v16, v0

    const-string v6, "typeAnnotation"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld6/b;->l:Li6/h$f;

    move-object/from16 v17, v0

    const-string v6, "typeParameterAnnotation"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v17}, Lt6/a;-><init>(Li6/f;Li6/h$f;Li6/h$f;Li6/h$f;Li6/h$f;Li6/h$f;Li6/h$f;Li6/h$f;Li6/h$f;Li6/h$f;Li6/h$f;Li6/h$f;Li6/h$f;Li6/h$f;Li6/h$f;Li6/h$f;Li6/h$f;)V

    return-void
.end method


# virtual methods
.method public final a(Lh6/c;)Ljava/lang/String;
    .registers 8

    const-string p0, "fqName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lh6/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fqName.asString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v1, v2, v3, v4, v5}, Lk7/m;->p(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lh6/c;->d()Z

    move-result v1

    if-eqz v1, :cond_34

    const-string p1, "default-package"

    goto :goto_41

    :cond_34
    invoke-virtual {p1}, Lh6/c;->g()Lh6/f;

    move-result-object p1

    invoke-virtual {p1}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "fqName.shortName().asString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".kotlin_builtins"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
