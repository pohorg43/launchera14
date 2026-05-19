.class public final Lw6/d$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw6/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDeserializedClassDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeserializedClassDescriptor.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor$EnumEntryClassDescriptors\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,424:1\n1194#2,2:425\n1222#2,4:427\n1620#2,3:431\n1620#2,3:434\n1603#2,9:437\n1855#2:446\n1856#2:448\n1612#2:449\n1#3:447\n*S KotlinDebug\n*F\n+ 1 DeserializedClassDescriptor.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor$EnumEntryClassDescriptors\n*L\n384#1:425,2\n384#1:427,4\n416#1:431,3\n417#1:434,3\n421#1:437,9\n421#1:446\n421#1:448\n421#1:449\n421#1:447\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/f;",
            "Lc6/g;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lx6/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/h<",
            "Lh6/f;",
            "Li5/e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lw6/d;


# direct methods
.method public constructor <init>(Lw6/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw6/d$c;->d:Lw6/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lw6/d;->e:Lc6/b;

    iget-object v0, v0, Lc6/b;->t:Ljava/util/List;

    const-string v1, "classProto.enumEntryList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Li4/j0;->b(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1d

    move v1, v2

    :cond_1d
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lc6/g;

    iget-object v4, p1, Lw6/d;->l:Lu6/m;

    iget-object v4, v4, Lu6/m;->b:Le6/c;

    iget v3, v3, Lc6/g;->d:I

    invoke-static {v4, v3}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    :cond_41
    iput-object v2, p0, Lw6/d$c;->a:Ljava/util/Map;

    iget-object p1, p0, Lw6/d$c;->d:Lw6/d;

    iget-object v0, p1, Lw6/d;->l:Lu6/m;

    iget-object v0, v0, Lu6/m;->a:Lu6/k;

    iget-object v0, v0, Lu6/k;->a:Lx6/m;

    new-instance v1, Lw6/d$c$a;

    invoke-direct {v1, p0, p1}, Lw6/d$c$a;-><init>(Lw6/d$c;Lw6/d;)V

    invoke-interface {v0, v1}, Lx6/m;->f(Lkotlin/jvm/functions/Function1;)Lx6/h;

    move-result-object p1

    iput-object p1, p0, Lw6/d$c;->b:Lx6/h;

    iget-object p1, p0, Lw6/d$c;->d:Lw6/d;

    iget-object p1, p1, Lw6/d;->l:Lu6/m;

    iget-object p1, p1, Lu6/m;->a:Lu6/k;

    iget-object p1, p1, Lu6/k;->a:Lx6/m;

    new-instance v0, Lw6/d$c$b;

    invoke-direct {v0, p0}, Lw6/d$c$b;-><init>(Lw6/d$c;)V

    invoke-interface {p1, v0}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Lw6/d$c;->c:Lx6/i;

    return-void
.end method
