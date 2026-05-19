.class public final Lc5/h$c;
.super Lc5/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRuntimeTypeMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RuntimeTypeMapper.kt\nkotlin/reflect/jvm/internal/JvmPropertySignature$KotlinProperty\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,283:1\n1#2:284\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Li5/o0;

.field public final b:Lc6/n;

.field public final c:Lf6/a$d;

.field public final d:Le6/c;

.field public final e:Le6/g;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Li5/o0;Lc6/n;Lf6/a$d;Le6/c;Le6/g;)V
    .registers 8

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc5/h;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lc5/h$c;->a:Li5/o0;

    iput-object p2, p0, Lc5/h$c;->b:Lc6/n;

    iput-object p3, p0, Lc5/h$c;->c:Lf6/a$d;

    iput-object p4, p0, Lc5/h$c;->d:Le6/c;

    iput-object p5, p0, Lc5/h$c;->e:Le6/g;

    invoke-virtual {p3}, Lf6/a$d;->e()Z

    move-result v0

    if-eqz v0, :cond_4e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p3, Lf6/a$d;->e:Lf6/a$c;

    iget p2, p2, Lf6/a$c;->c:I

    invoke-interface {p4, p2}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lf6/a$d;->e:Lf6/a$c;

    iget p2, p2, Lf6/a$c;->d:I

    invoke-interface {p4, p2}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_fb

    :cond_4e
    sget-object p3, Lg6/h;->a:Lg6/h;

    const/4 v0, 0x1

    invoke-virtual {p3, p2, p4, p5, v0}, Lg6/h;->b(Lc6/n;Le6/c;Le6/g;Z)Lg6/d$a;

    move-result-object p2

    if-eqz p2, :cond_fe

    iget-object p3, p2, Lg6/d$a;->a:Ljava/lang/String;

    iget-object p2, p2, Lg6/d$a;->b:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lr5/e0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Li5/d1;->b()Li5/l;

    move-result-object p3

    const-string v0, "descriptor.containingDeclaration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v0

    sget-object v1, Li5/s;->d:Li5/t;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x24

    if-eqz v0, :cond_bc

    instance-of v0, p3, Lw6/d;

    if-eqz v0, :cond_bc

    check-cast p3, Lw6/d;

    iget-object p1, p3, Lw6/d;->e:Lc6/b;

    sget-object p3, Lf6/a;->i:Li6/h$f;

    const-string v0, "classModuleName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Le6/e;->a(Li6/h$d;Li6/h$f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_9f

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {p4, p1}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a1

    :cond_9f
    const-string p1, "main"

    :cond_a1
    invoke-static {v1}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object p3

    sget-object p4, Lh6/g;->a:Lk7/f;

    const-string p4, "name"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p4, Lh6/g;->a:Lk7/f;

    const-string v0, "_"

    invoke-virtual {p4, p1, v0}, Lk7/f;->b(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_f5

    :cond_bc
    invoke-interface {p1}, Li5/c0;->getVisibility()Li5/t;

    move-result-object p4

    sget-object v0, Li5/s;->a:Li5/t;

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_f3

    instance-of p3, p3, Li5/h0;

    if-eqz p3, :cond_f3

    const-string p3, "null cannot be cast to non-null type org.jetbrains.kotlin.serialization.deserialization.descriptors.DeserializedPropertyDescriptor"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lw6/m;

    iget-object p1, p1, Lw6/m;->G:Lw6/i;

    instance-of p3, p1, La6/n;

    if-eqz p3, :cond_f3

    check-cast p1, La6/n;

    iget-object p3, p1, La6/n;->c:Lp6/c;

    if-eqz p3, :cond_f3

    invoke-static {v1}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, La6/n;->e()Lh6/f;

    move-result-object p1

    invoke-virtual {p1}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_f5

    :cond_f3
    const-string p1, ""

    :goto_f5
    const-string p3, "()"

    invoke-static {p5, p1, p3, p2}, Landroidx/fragment/app/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_fb
    iput-object p1, p0, Lc5/h$c;->f:Ljava/lang/String;

    return-void

    :cond_fe
    new-instance p0, Lc5/n0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No field signature for property: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lc5/h$c;->f:Ljava/lang/String;

    return-object p0
.end method
