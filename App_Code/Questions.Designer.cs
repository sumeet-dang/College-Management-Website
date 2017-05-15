﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.ComponentModel;
using System.Data.EntityClient;
using System.Data.Objects;
using System.Data.Objects.DataClasses;
using System.Linq;
using System.Runtime.Serialization;
using System.Xml.Serialization;

[assembly: EdmSchemaAttribute()]
namespace collegeModel2
{
    #region Contexts
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    public partial class collegeEntities1 : ObjectContext
    {
        #region Constructors
    
        /// <summary>
        /// Initializes a new collegeEntities1 object using the connection string found in the 'collegeEntities1' section of the application configuration file.
        /// </summary>
        public collegeEntities1() : base("name=collegeEntities1", "collegeEntities1")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Initialize a new collegeEntities1 object.
        /// </summary>
        public collegeEntities1(string connectionString) : base(connectionString, "collegeEntities1")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Initialize a new collegeEntities1 object.
        /// </summary>
        public collegeEntities1(EntityConnection connection) : base(connection, "collegeEntities1")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        #endregion
    
        #region Partial Methods
    
        partial void OnContextCreated();
    
        #endregion
    
        #region ObjectSet Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        public ObjectSet<ProgrammingQuestion> ProgrammingQuestions
        {
            get
            {
                if ((_ProgrammingQuestions == null))
                {
                    _ProgrammingQuestions = base.CreateObjectSet<ProgrammingQuestion>("ProgrammingQuestions");
                }
                return _ProgrammingQuestions;
            }
        }
        private ObjectSet<ProgrammingQuestion> _ProgrammingQuestions;
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        public ObjectSet<QuantitativeQuestion> QuantitativeQuestions
        {
            get
            {
                if ((_QuantitativeQuestions == null))
                {
                    _QuantitativeQuestions = base.CreateObjectSet<QuantitativeQuestion>("QuantitativeQuestions");
                }
                return _QuantitativeQuestions;
            }
        }
        private ObjectSet<QuantitativeQuestion> _QuantitativeQuestions;
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        public ObjectSet<VerbalQuestion> VerbalQuestions
        {
            get
            {
                if ((_VerbalQuestions == null))
                {
                    _VerbalQuestions = base.CreateObjectSet<VerbalQuestion>("VerbalQuestions");
                }
                return _VerbalQuestions;
            }
        }
        private ObjectSet<VerbalQuestion> _VerbalQuestions;

        #endregion

        #region AddTo Methods
    
        /// <summary>
        /// Deprecated Method for adding a new object to the ProgrammingQuestions EntitySet. Consider using the .Add method of the associated ObjectSet&lt;T&gt; property instead.
        /// </summary>
        public void AddToProgrammingQuestions(ProgrammingQuestion programmingQuestion)
        {
            base.AddObject("ProgrammingQuestions", programmingQuestion);
        }
    
        /// <summary>
        /// Deprecated Method for adding a new object to the QuantitativeQuestions EntitySet. Consider using the .Add method of the associated ObjectSet&lt;T&gt; property instead.
        /// </summary>
        public void AddToQuantitativeQuestions(QuantitativeQuestion quantitativeQuestion)
        {
            base.AddObject("QuantitativeQuestions", quantitativeQuestion);
        }
    
        /// <summary>
        /// Deprecated Method for adding a new object to the VerbalQuestions EntitySet. Consider using the .Add method of the associated ObjectSet&lt;T&gt; property instead.
        /// </summary>
        public void AddToVerbalQuestions(VerbalQuestion verbalQuestion)
        {
            base.AddObject("VerbalQuestions", verbalQuestion);
        }

        #endregion

    }

    #endregion

    #region Entities
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="collegeModel2", Name="ProgrammingQuestion")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class ProgrammingQuestion : EntityObject
    {
        #region Factory Method
    
        /// <summary>
        /// Create a new ProgrammingQuestion object.
        /// </summary>
        /// <param name="questionId">Initial value of the QuestionId property.</param>
        /// <param name="questionStatement">Initial value of the QuestionStatement property.</param>
        /// <param name="option1">Initial value of the Option1 property.</param>
        /// <param name="option2">Initial value of the Option2 property.</param>
        /// <param name="option3">Initial value of the Option3 property.</param>
        /// <param name="option4">Initial value of the Option4 property.</param>
        /// <param name="correctOption">Initial value of the CorrectOption property.</param>
        public static ProgrammingQuestion CreateProgrammingQuestion(global::System.Int64 questionId, global::System.String questionStatement, global::System.String option1, global::System.String option2, global::System.String option3, global::System.String option4, global::System.Int16 correctOption)
        {
            ProgrammingQuestion programmingQuestion = new ProgrammingQuestion();
            programmingQuestion.QuestionId = questionId;
            programmingQuestion.QuestionStatement = questionStatement;
            programmingQuestion.Option1 = option1;
            programmingQuestion.Option2 = option2;
            programmingQuestion.Option3 = option3;
            programmingQuestion.Option4 = option4;
            programmingQuestion.CorrectOption = correctOption;
            return programmingQuestion;
        }

        #endregion

        #region Simple Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int64 QuestionId
        {
            get
            {
                return _QuestionId;
            }
            set
            {
                if (_QuestionId != value)
                {
                    OnQuestionIdChanging(value);
                    ReportPropertyChanging("QuestionId");
                    _QuestionId = StructuralObject.SetValidValue(value, "QuestionId");
                    ReportPropertyChanged("QuestionId");
                    OnQuestionIdChanged();
                }
            }
        }
        private global::System.Int64 _QuestionId;
        partial void OnQuestionIdChanging(global::System.Int64 value);
        partial void OnQuestionIdChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String QuestionStatement
        {
            get
            {
                return _QuestionStatement;
            }
            set
            {
                OnQuestionStatementChanging(value);
                ReportPropertyChanging("QuestionStatement");
                _QuestionStatement = StructuralObject.SetValidValue(value, false, "QuestionStatement");
                ReportPropertyChanged("QuestionStatement");
                OnQuestionStatementChanged();
            }
        }
        private global::System.String _QuestionStatement;
        partial void OnQuestionStatementChanging(global::System.String value);
        partial void OnQuestionStatementChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Option1
        {
            get
            {
                return _Option1;
            }
            set
            {
                OnOption1Changing(value);
                ReportPropertyChanging("Option1");
                _Option1 = StructuralObject.SetValidValue(value, false, "Option1");
                ReportPropertyChanged("Option1");
                OnOption1Changed();
            }
        }
        private global::System.String _Option1;
        partial void OnOption1Changing(global::System.String value);
        partial void OnOption1Changed();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Option2
        {
            get
            {
                return _Option2;
            }
            set
            {
                OnOption2Changing(value);
                ReportPropertyChanging("Option2");
                _Option2 = StructuralObject.SetValidValue(value, false, "Option2");
                ReportPropertyChanged("Option2");
                OnOption2Changed();
            }
        }
        private global::System.String _Option2;
        partial void OnOption2Changing(global::System.String value);
        partial void OnOption2Changed();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Option3
        {
            get
            {
                return _Option3;
            }
            set
            {
                OnOption3Changing(value);
                ReportPropertyChanging("Option3");
                _Option3 = StructuralObject.SetValidValue(value, false, "Option3");
                ReportPropertyChanged("Option3");
                OnOption3Changed();
            }
        }
        private global::System.String _Option3;
        partial void OnOption3Changing(global::System.String value);
        partial void OnOption3Changed();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Option4
        {
            get
            {
                return _Option4;
            }
            set
            {
                OnOption4Changing(value);
                ReportPropertyChanging("Option4");
                _Option4 = StructuralObject.SetValidValue(value, false, "Option4");
                ReportPropertyChanged("Option4");
                OnOption4Changed();
            }
        }
        private global::System.String _Option4;
        partial void OnOption4Changing(global::System.String value);
        partial void OnOption4Changed();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int16 CorrectOption
        {
            get
            {
                return _CorrectOption;
            }
            set
            {
                OnCorrectOptionChanging(value);
                ReportPropertyChanging("CorrectOption");
                _CorrectOption = StructuralObject.SetValidValue(value, "CorrectOption");
                ReportPropertyChanged("CorrectOption");
                OnCorrectOptionChanged();
            }
        }
        private global::System.Int16 _CorrectOption;
        partial void OnCorrectOptionChanging(global::System.Int16 value);
        partial void OnCorrectOptionChanged();

        #endregion

    }
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="collegeModel2", Name="QuantitativeQuestion")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class QuantitativeQuestion : EntityObject
    {
        #region Factory Method
    
        /// <summary>
        /// Create a new QuantitativeQuestion object.
        /// </summary>
        /// <param name="questionId">Initial value of the QuestionId property.</param>
        /// <param name="option1">Initial value of the Option1 property.</param>
        /// <param name="option2">Initial value of the Option2 property.</param>
        /// <param name="option3">Initial value of the Option3 property.</param>
        /// <param name="option4">Initial value of the Option4 property.</param>
        /// <param name="correctOption">Initial value of the CorrectOption property.</param>
        /// <param name="questionStatement">Initial value of the QuestionStatement property.</param>
        public static QuantitativeQuestion CreateQuantitativeQuestion(global::System.Int64 questionId, global::System.String option1, global::System.String option2, global::System.String option3, global::System.String option4, global::System.Int16 correctOption, global::System.String questionStatement)
        {
            QuantitativeQuestion quantitativeQuestion = new QuantitativeQuestion();
            quantitativeQuestion.QuestionId = questionId;
            quantitativeQuestion.Option1 = option1;
            quantitativeQuestion.Option2 = option2;
            quantitativeQuestion.Option3 = option3;
            quantitativeQuestion.Option4 = option4;
            quantitativeQuestion.CorrectOption = correctOption;
            quantitativeQuestion.QuestionStatement = questionStatement;
            return quantitativeQuestion;
        }

        #endregion

        #region Simple Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int64 QuestionId
        {
            get
            {
                return _QuestionId;
            }
            set
            {
                if (_QuestionId != value)
                {
                    OnQuestionIdChanging(value);
                    ReportPropertyChanging("QuestionId");
                    _QuestionId = StructuralObject.SetValidValue(value, "QuestionId");
                    ReportPropertyChanged("QuestionId");
                    OnQuestionIdChanged();
                }
            }
        }
        private global::System.Int64 _QuestionId;
        partial void OnQuestionIdChanging(global::System.Int64 value);
        partial void OnQuestionIdChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Option1
        {
            get
            {
                return _Option1;
            }
            set
            {
                OnOption1Changing(value);
                ReportPropertyChanging("Option1");
                _Option1 = StructuralObject.SetValidValue(value, false, "Option1");
                ReportPropertyChanged("Option1");
                OnOption1Changed();
            }
        }
        private global::System.String _Option1;
        partial void OnOption1Changing(global::System.String value);
        partial void OnOption1Changed();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Option2
        {
            get
            {
                return _Option2;
            }
            set
            {
                OnOption2Changing(value);
                ReportPropertyChanging("Option2");
                _Option2 = StructuralObject.SetValidValue(value, false, "Option2");
                ReportPropertyChanged("Option2");
                OnOption2Changed();
            }
        }
        private global::System.String _Option2;
        partial void OnOption2Changing(global::System.String value);
        partial void OnOption2Changed();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Option3
        {
            get
            {
                return _Option3;
            }
            set
            {
                OnOption3Changing(value);
                ReportPropertyChanging("Option3");
                _Option3 = StructuralObject.SetValidValue(value, false, "Option3");
                ReportPropertyChanged("Option3");
                OnOption3Changed();
            }
        }
        private global::System.String _Option3;
        partial void OnOption3Changing(global::System.String value);
        partial void OnOption3Changed();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Option4
        {
            get
            {
                return _Option4;
            }
            set
            {
                OnOption4Changing(value);
                ReportPropertyChanging("Option4");
                _Option4 = StructuralObject.SetValidValue(value, false, "Option4");
                ReportPropertyChanged("Option4");
                OnOption4Changed();
            }
        }
        private global::System.String _Option4;
        partial void OnOption4Changing(global::System.String value);
        partial void OnOption4Changed();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int16 CorrectOption
        {
            get
            {
                return _CorrectOption;
            }
            set
            {
                OnCorrectOptionChanging(value);
                ReportPropertyChanging("CorrectOption");
                _CorrectOption = StructuralObject.SetValidValue(value, "CorrectOption");
                ReportPropertyChanged("CorrectOption");
                OnCorrectOptionChanged();
            }
        }
        private global::System.Int16 _CorrectOption;
        partial void OnCorrectOptionChanging(global::System.Int16 value);
        partial void OnCorrectOptionChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String QuestionStatement
        {
            get
            {
                return _QuestionStatement;
            }
            set
            {
                OnQuestionStatementChanging(value);
                ReportPropertyChanging("QuestionStatement");
                _QuestionStatement = StructuralObject.SetValidValue(value, false, "QuestionStatement");
                ReportPropertyChanged("QuestionStatement");
                OnQuestionStatementChanged();
            }
        }
        private global::System.String _QuestionStatement;
        partial void OnQuestionStatementChanging(global::System.String value);
        partial void OnQuestionStatementChanged();

        #endregion

    }
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="collegeModel2", Name="VerbalQuestion")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class VerbalQuestion : EntityObject
    {
        #region Factory Method
    
        /// <summary>
        /// Create a new VerbalQuestion object.
        /// </summary>
        /// <param name="questionId">Initial value of the QuestionId property.</param>
        /// <param name="questionStatement">Initial value of the QuestionStatement property.</param>
        /// <param name="option1">Initial value of the Option1 property.</param>
        /// <param name="option2">Initial value of the Option2 property.</param>
        /// <param name="option3">Initial value of the Option3 property.</param>
        /// <param name="option4">Initial value of the Option4 property.</param>
        /// <param name="correctOption">Initial value of the CorrectOption property.</param>
        public static VerbalQuestion CreateVerbalQuestion(global::System.Int64 questionId, global::System.String questionStatement, global::System.String option1, global::System.String option2, global::System.String option3, global::System.String option4, global::System.Int16 correctOption)
        {
            VerbalQuestion verbalQuestion = new VerbalQuestion();
            verbalQuestion.QuestionId = questionId;
            verbalQuestion.QuestionStatement = questionStatement;
            verbalQuestion.Option1 = option1;
            verbalQuestion.Option2 = option2;
            verbalQuestion.Option3 = option3;
            verbalQuestion.Option4 = option4;
            verbalQuestion.CorrectOption = correctOption;
            return verbalQuestion;
        }

        #endregion

        #region Simple Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int64 QuestionId
        {
            get
            {
                return _QuestionId;
            }
            set
            {
                if (_QuestionId != value)
                {
                    OnQuestionIdChanging(value);
                    ReportPropertyChanging("QuestionId");
                    _QuestionId = StructuralObject.SetValidValue(value, "QuestionId");
                    ReportPropertyChanged("QuestionId");
                    OnQuestionIdChanged();
                }
            }
        }
        private global::System.Int64 _QuestionId;
        partial void OnQuestionIdChanging(global::System.Int64 value);
        partial void OnQuestionIdChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String QuestionStatement
        {
            get
            {
                return _QuestionStatement;
            }
            set
            {
                OnQuestionStatementChanging(value);
                ReportPropertyChanging("QuestionStatement");
                _QuestionStatement = StructuralObject.SetValidValue(value, false, "QuestionStatement");
                ReportPropertyChanged("QuestionStatement");
                OnQuestionStatementChanged();
            }
        }
        private global::System.String _QuestionStatement;
        partial void OnQuestionStatementChanging(global::System.String value);
        partial void OnQuestionStatementChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Option1
        {
            get
            {
                return _Option1;
            }
            set
            {
                OnOption1Changing(value);
                ReportPropertyChanging("Option1");
                _Option1 = StructuralObject.SetValidValue(value, false, "Option1");
                ReportPropertyChanged("Option1");
                OnOption1Changed();
            }
        }
        private global::System.String _Option1;
        partial void OnOption1Changing(global::System.String value);
        partial void OnOption1Changed();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Option2
        {
            get
            {
                return _Option2;
            }
            set
            {
                OnOption2Changing(value);
                ReportPropertyChanging("Option2");
                _Option2 = StructuralObject.SetValidValue(value, false, "Option2");
                ReportPropertyChanged("Option2");
                OnOption2Changed();
            }
        }
        private global::System.String _Option2;
        partial void OnOption2Changing(global::System.String value);
        partial void OnOption2Changed();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Option3
        {
            get
            {
                return _Option3;
            }
            set
            {
                OnOption3Changing(value);
                ReportPropertyChanging("Option3");
                _Option3 = StructuralObject.SetValidValue(value, false, "Option3");
                ReportPropertyChanged("Option3");
                OnOption3Changed();
            }
        }
        private global::System.String _Option3;
        partial void OnOption3Changing(global::System.String value);
        partial void OnOption3Changed();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Option4
        {
            get
            {
                return _Option4;
            }
            set
            {
                OnOption4Changing(value);
                ReportPropertyChanging("Option4");
                _Option4 = StructuralObject.SetValidValue(value, false, "Option4");
                ReportPropertyChanged("Option4");
                OnOption4Changed();
            }
        }
        private global::System.String _Option4;
        partial void OnOption4Changing(global::System.String value);
        partial void OnOption4Changed();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int16 CorrectOption
        {
            get
            {
                return _CorrectOption;
            }
            set
            {
                OnCorrectOptionChanging(value);
                ReportPropertyChanging("CorrectOption");
                _CorrectOption = StructuralObject.SetValidValue(value, "CorrectOption");
                ReportPropertyChanged("CorrectOption");
                OnCorrectOptionChanged();
            }
        }
        private global::System.Int16 _CorrectOption;
        partial void OnCorrectOptionChanging(global::System.Int16 value);
        partial void OnCorrectOptionChanged();

        #endregion

    }

    #endregion

}