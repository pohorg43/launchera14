.class public final Lr5/f0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lh6/c;

.field public static final b:Lh6/f;

.field public static final c:Lh6/c;

.field public static final d:Lh6/c;

.field public static final e:Lh6/c;

.field public static final f:Lh6/c;

.field public static final g:Lh6/c;

.field public static final h:Lh6/c;

.field public static final i:Lh6/c;

.field public static final j:Lh6/c;

.field public static final k:Lh6/c;

.field public static final l:Lh6/c;

.field public static final m:Lh6/c;

.field public static final n:Lh6/c;

.field public static final o:Lh6/c;

.field public static final p:Lh6/c;

.field public static final q:Lh6/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lh6/c;

    const-string v1, "kotlin.Metadata"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/f0;->a:Lh6/c;

    invoke-static {v0}, Lp6/c;->c(Lh6/c;)Lp6/c;

    move-result-object v0

    invoke-virtual {v0}, Lp6/c;->e()Ljava/lang/String;

    const-string v0, "value"

    invoke-static {v0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v0

    sput-object v0, Lr5/f0;->b:Lh6/f;

    new-instance v0, Lh6/c;

    const-class v1, Ljava/lang/annotation/Target;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/f0;->c:Lh6/c;

    new-instance v0, Lh6/c;

    const-class v1, Ljava/lang/annotation/ElementType;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v0, Lh6/c;

    const-class v1, Ljava/lang/annotation/Retention;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/f0;->d:Lh6/c;

    new-instance v0, Lh6/c;

    const-class v1, Ljava/lang/annotation/RetentionPolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v0, Lh6/c;

    const-class v1, Ljava/lang/Deprecated;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/f0;->e:Lh6/c;

    new-instance v0, Lh6/c;

    const-class v1, Ljava/lang/annotation/Documented;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/f0;->f:Lh6/c;

    new-instance v0, Lh6/c;

    const-string v1, "java.lang.annotation.Repeatable"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/f0;->g:Lh6/c;

    new-instance v0, Lh6/c;

    const-string v1, "org.jetbrains.annotations.NotNull"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/f0;->h:Lh6/c;

    new-instance v0, Lh6/c;

    const-string v1, "org.jetbrains.annotations.Nullable"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/f0;->i:Lh6/c;

    new-instance v0, Lh6/c;

    const-string v1, "org.jetbrains.annotations.Mutable"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/f0;->j:Lh6/c;

    new-instance v0, Lh6/c;

    const-string v1, "org.jetbrains.annotations.ReadOnly"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/f0;->k:Lh6/c;

    new-instance v0, Lh6/c;

    const-string v1, "kotlin.annotations.jvm.ReadOnly"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/f0;->l:Lh6/c;

    new-instance v0, Lh6/c;

    const-string v1, "kotlin.annotations.jvm.Mutable"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/f0;->m:Lh6/c;

    new-instance v0, Lh6/c;

    const-string v1, "kotlin.jvm.PurelyImplements"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/f0;->n:Lh6/c;

    new-instance v0, Lh6/c;

    const-string v1, "kotlin.jvm.internal"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v0, Lh6/c;

    const-string v1, "kotlin.jvm.internal.SerializedIr"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/f0;->o:Lh6/c;

    invoke-static {v0}, Lp6/c;->c(Lh6/c;)Lp6/c;

    move-result-object v0

    invoke-virtual {v0}, Lp6/c;->e()Ljava/lang/String;

    new-instance v0, Lh6/c;

    const-string v1, "kotlin.jvm.internal.EnhancedNullability"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/f0;->p:Lh6/c;

    new-instance v0, Lh6/c;

    const-string v1, "kotlin.jvm.internal.EnhancedMutability"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/f0;->q:Lh6/c;

    return-void
.end method
