.class public final Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$special$$inlined$observable$1;
.super Lv4/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;-><init>(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv4/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDelegates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delegates.kt\nkotlin/properties/Delegates$observable$1\n+ 2 TaskBarFolderIconBackground.kt\ncom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground\n*L\n1#1,73:1\n38#2,2:74\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;)V
    .registers 3

    iput-object p2, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$special$$inlined$observable$1;->this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;

    invoke-direct {p0, p1}, Lv4/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public afterChange(Lz4/n;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/n<",
            "*>;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$special$$inlined$observable$1;->this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->access$startArrowAnimation(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;Z)V

    return-void
.end method
