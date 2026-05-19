.class public final La6/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La6/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La6/p<",
        "La6/o;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nmethodSignatureMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 methodSignatureMapping.kt\norg/jetbrains/kotlin/load/kotlin/JvmTypeFactoryImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,184:1\n1#2:185\n1282#3,2:186\n*S KotlinDebug\n*F\n+ 1 methodSignatureMapping.kt\norg/jetbrains/kotlin/load/kotlin/JvmTypeFactoryImpl\n*L\n128#1:186,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:La6/q;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, La6/q;

    invoke-direct {v0}, La6/q;-><init>()V

    sput-object v0, La6/q;->a:La6/q;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, La6/q;->g(Ljava/lang/String;)La6/o;

    move-result-object p0

    return-object p0
.end method

.method public b(Lf5/h;)Ljava/lang/Object;
    .registers 2

    const-string p0, "primitiveType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_3a

    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :pswitch_12  #0x7
    sget-object p0, La6/o;->a:La6/o;

    sget-object p0, La6/o;->i:La6/o$c;

    goto :goto_39

    :pswitch_17  #0x6
    sget-object p0, La6/o;->a:La6/o;

    sget-object p0, La6/o;->h:La6/o$c;

    goto :goto_39

    :pswitch_1c  #0x5
    sget-object p0, La6/o;->a:La6/o;

    sget-object p0, La6/o;->g:La6/o$c;

    goto :goto_39

    :pswitch_21  #0x4
    sget-object p0, La6/o;->a:La6/o;

    sget-object p0, La6/o;->f:La6/o$c;

    goto :goto_39

    :pswitch_26  #0x3
    sget-object p0, La6/o;->a:La6/o;

    sget-object p0, La6/o;->e:La6/o$c;

    goto :goto_39

    :pswitch_2b  #0x2
    sget-object p0, La6/o;->a:La6/o;

    sget-object p0, La6/o;->d:La6/o$c;

    goto :goto_39

    :pswitch_30  #0x1
    sget-object p0, La6/o;->a:La6/o;

    sget-object p0, La6/o;->c:La6/o$c;

    goto :goto_39

    :pswitch_35  #0x0
    sget-object p0, La6/o;->a:La6/o;

    sget-object p0, La6/o;->b:La6/o$c;

    :goto_39
    return-object p0

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_35  #00000000
        :pswitch_30  #00000001
        :pswitch_2b  #00000002
        :pswitch_26  #00000003
        :pswitch_21  #00000004
        :pswitch_1c  #00000005
        :pswitch_17  #00000006
        :pswitch_12  #00000007
    .end packed-switch
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, La6/o;

    const-string v0, "possiblyPrimitiveType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, La6/o$c;

    if-eqz v0, :cond_27

    move-object v0, p1

    check-cast v0, La6/o$c;

    iget-object v0, v0, La6/o$c;->j:Lp6/d;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lp6/d;->f()Lh6/c;

    move-result-object p1

    invoke-static {p1}, Lp6/c;->c(Lh6/c;)Lp6/c;

    move-result-object p1

    invoke-virtual {p1}, Lp6/c;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "byFqNameWithoutInnerClas…apperFqName).internalName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, La6/q;->h(Ljava/lang/String;)La6/o$b;

    move-result-object p1

    :cond_27
    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    check-cast p1, La6/o;

    invoke-virtual {p0, p1}, La6/q;->i(La6/o;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic e(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, La6/q;->h(Ljava/lang/String;)La6/o$b;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/lang/Object;
    .registers 2

    const-string v0, "java/lang/Class"

    invoke-virtual {p0, v0}, La6/q;->h(Ljava/lang/String;)La6/o$b;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/String;)La6/o;
    .registers 11

    const-string v0, "representation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {}, Lp6/d;->values()[Lp6/d;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_13
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v4, v3, :cond_2c

    aget-object v7, v2, v4

    invoke-virtual {v7}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v1, :cond_25

    move v8, v6

    goto :goto_26

    :cond_25
    move v8, v0

    :goto_26
    if-eqz v8, :cond_29

    goto :goto_2d

    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_2c
    move-object v7, v5

    :goto_2d
    if-eqz v7, :cond_35

    new-instance p0, La6/o$c;

    invoke-direct {p0, v7}, La6/o$c;-><init>(Lp6/d;)V

    return-object p0

    :cond_35
    const/16 v2, 0x56

    if-ne v1, v2, :cond_3f

    new-instance p0, La6/o$c;

    invoke-direct {p0, v5}, La6/o$c;-><init>(Lp6/d;)V

    goto :goto_74

    :cond_3f
    const/16 v2, 0x5b

    if-ne v1, v2, :cond_57

    new-instance v0, La6/o$a;

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, La6/q;->g(Ljava/lang/String;)La6/o;

    move-result-object p0

    invoke-direct {v0, p0}, La6/o$a;-><init>(La6/o;)V

    move-object p0, v0

    goto :goto_74

    :cond_57
    const/16 p0, 0x4c

    if-ne v1, p0, :cond_61

    const/16 p0, 0x3b

    const/4 v1, 0x2

    invoke-static {p1, p0, v0, v1}, Lk7/q;->w(Ljava/lang/CharSequence;CZI)Z

    :cond_61
    new-instance p0, La6/o$b;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, La6/o$b;-><init>(Ljava/lang/String;)V

    :goto_74
    return-object p0
.end method

.method public h(Ljava/lang/String;)La6/o$b;
    .registers 2

    const-string p0, "internalName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, La6/o$b;

    invoke-direct {p0, p1}, La6/o$b;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public i(La6/o;)Ljava/lang/String;
    .registers 3

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, La6/o$a;

    if-eqz v0, :cond_1f

    const/16 v0, 0x5b

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, La6/o$a;

    iget-object p1, p1, La6/o$a;->j:La6/o;

    invoke-virtual {p0, p1}, La6/q;->i(La6/o;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_46

    :cond_1f
    instance-of p0, p1, La6/o$c;

    if-eqz p0, :cond_32

    check-cast p1, La6/o$c;

    iget-object p0, p1, La6/o$c;->j:Lp6/d;

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Lp6/d;->d()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_46

    :cond_2f
    const-string p0, "V"

    goto :goto_46

    :cond_32
    instance-of p0, p1, La6/o$b;

    if-eqz p0, :cond_47

    const/16 p0, 0x4c

    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object p0

    check-cast p1, La6/o$b;

    iget-object p1, p1, La6/o$b;->j:Ljava/lang/String;

    const/16 v0, 0x3b

    invoke-static {p0, p1, v0}, Landroidx/constraintlayout/core/motion/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    :cond_46
    :goto_46
    return-object p0

    :cond_47
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method
