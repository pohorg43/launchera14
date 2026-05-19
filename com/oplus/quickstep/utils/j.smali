.class public final synthetic Lcom/oplus/quickstep/utils/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/reflect/Method;

.field public final synthetic e:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ZLcom/oplus/quickstep/utils/SynchronizeInvocationHandler;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/oplus/quickstep/utils/j;->a:Z

    iput-object p2, p0, Lcom/oplus/quickstep/utils/j;->b:Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;

    iput-object p3, p0, Lcom/oplus/quickstep/utils/j;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/quickstep/utils/j;->d:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/oplus/quickstep/utils/j;->e:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/quickstep/utils/j;->a:Z

    iget-object v1, p0, Lcom/oplus/quickstep/utils/j;->b:Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;

    iget-object v2, p0, Lcom/oplus/quickstep/utils/j;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/quickstep/utils/j;->d:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/oplus/quickstep/utils/j;->e:[Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->a(ZLcom/oplus/quickstep/utils/SynchronizeInvocationHandler;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
